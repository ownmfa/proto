package main

import (
	"context"
	"crypto/tls"
	"encoding/base64"
	"flag"
	"fmt"
	"os"
	"time"

	"github.com/ownmfa/api/go/api"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/encoding/gzip"
)

// credential provides token-based credentials for gRPC.
type credential struct {
	token string
}

// GetRequestMetadata returns authentication metadata and implements the
// PerRPCCredentials interface.
func (c *credential) GetRequestMetadata(ctx context.Context,
	uri ...string) (map[string]string, error) {
	return map[string]string{
		"authorization": "Bearer " + c.token,
	}, nil
}

// RequireTransportSecurity implements the PerRPCCredentials interface.
func (c *credential) RequireTransportSecurity() bool {
	return true
}

const usage = `Usage:
%[1]s [options] <org name> <admin email> <admin password>
`

func main() {
	flag.Usage = func() {
		fmt.Fprintf(flag.CommandLine.Output(), usage, os.Args[0])
		flag.PrintDefaults()
	}

	grpcURI := flag.String("grpcURI", "api.ownmfa.com:50051", "gRPC URI")
	flag.Parse()

	if flag.NArg() != 3 {
		flag.Usage()
		os.Exit(2)
	}

	checkErr := func(err error) {
		if err != nil {
			fmt.Fprintln(os.Stderr, err)
			os.Exit(1)
		}
	}

	// Build unauthenticated gRPC connection.
	opts := []grpc.DialOption{
		grpc.WithBlock(),
		grpc.WithDefaultCallOptions(grpc.UseCompressor(gzip.Name)),
		grpc.WithTransportCredentials(credentials.NewTLS(
			&tls.Config{MinVersion: tls.VersionTLS12})),
	}
	conn, err := grpc.Dial(*grpcURI, opts...)
	checkErr(err)

	ctx, cancel := context.WithTimeout(context.Background(), time.Minute)
	defer cancel()

	// Log in user.
	sessCli := api.NewSessionServiceClient(conn)
	login, err := sessCli.Login(ctx, &api.LoginRequest{
		Email: flag.Arg(1), OrgName: flag.Arg(0), Password: flag.Arg(2),
	})
	checkErr(err)
	checkErr(conn.Close())

	fmt.Fprintf(os.Stdout, "Login: %+v\n", login)

	// Build login-authenticated gRPC connection.
	opts = []grpc.DialOption{
		grpc.WithBlock(),
		grpc.WithDefaultCallOptions(grpc.UseCompressor(gzip.Name)),
		grpc.WithTransportCredentials(credentials.NewTLS(
			&tls.Config{MinVersion: tls.VersionTLS12})),
		grpc.WithPerRPCCredentials(&credential{token: login.Token}),
	}
	loginConn, err := grpc.Dial(*grpcURI, opts...)
	checkErr(err)

	// Create an application.
	aiCli := api.NewAppIdentityServiceClient(loginConn)
	createApp, err := aiCli.CreateApp(ctx, &api.CreateAppRequest{
		App: &api.App{
			Name: flag.Arg(1) + "-example", DisplayName: flag.Arg(1) +
				" Example",
		},
	})
	checkErr(err)

	fmt.Fprintf(os.Stdout, "App: %+v\n", createApp)

	// Create an API key (optional).
	sessCli = api.NewSessionServiceClient(loginConn)
	createKey, err := sessCli.CreateKey(ctx, &api.CreateKeyRequest{
		Key: &api.Key{
			Name: flag.Arg(1) + "-example", Role: api.Role_AUTHENTICATOR,
		},
	})
	checkErr(err)
	checkErr(loginConn.Close())

	fmt.Fprintf(os.Stdout, "Key: %+v\n", createKey)

	// Build key-authenticated gRPC connection (optional).
	opts = []grpc.DialOption{
		grpc.WithBlock(),
		grpc.WithDefaultCallOptions(grpc.UseCompressor(gzip.Name)),
		grpc.WithTransportCredentials(credentials.NewTLS(
			&tls.Config{MinVersion: tls.VersionTLS12})),
		grpc.WithPerRPCCredentials(&credential{token: createKey.Token}),
	}
	keyConn, err := grpc.Dial(*grpcURI, opts...)
	checkErr(err)

	// Create an identity.
	aiCli = api.NewAppIdentityServiceClient(keyConn)
	createIdentity, err := aiCli.CreateIdentity(ctx, &api.CreateIdentityRequest{
		Identity: &api.Identity{
			AppId: createApp.Id, Comment: flag.Arg(1) + "-example",
			MethodOneof: &api.Identity_GoogleAuthTotpMethod{
				GoogleAuthTotpMethod: &api.GoogleAuthTOTPMethod{
					AccountName: flag.Arg(1),
				},
			},
		},
	})
	checkErr(err)
	checkErr(keyConn.Close())

	fmt.Fprintf(os.Stdout, "Identity: %+v\n", createIdentity.Identity)
	fmt.Fprintf(os.Stdout, "QR code (run `echo '...base64...'|base64 -D > "+
		"qr.png`):\n%v\n", base64.StdEncoding.EncodeToString(createIdentity.Qr))
}
