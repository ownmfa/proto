// Package main runs the Login tool.
package main

import (
	"context"
	"crypto/tls"
	"flag"
	"fmt"
	"os"
	"time"

	"github.com/ownmfa/proto/go/api"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/encoding/gzip"
)

const usage = `Usage:
%[1]s [options] <org name> <admin email> <admin password>
`

func main() {
	checkErr := func(err error) {
		if err != nil {
			fmt.Fprintln(os.Stderr, err)
			os.Exit(1)
		}
	}

	flag.Usage = func() {
		_, err := fmt.Fprintf(flag.CommandLine.Output(), usage, os.Args[0])
		checkErr(err)

		flag.PrintDefaults()
	}

	grpcURI := flag.String("grpcURI", "api.ownmfa.com:50051", "gRPC URI")
	flag.Parse()

	if flag.NArg() != 3 {
		flag.Usage()
		os.Exit(2)
	}

	// Build unauthenticated gRPC connection.
	opts := []grpc.DialOption{
		grpc.WithDefaultCallOptions(grpc.UseCompressor(gzip.Name)),
		grpc.WithTransportCredentials(credentials.NewTLS(
			&tls.Config{MinVersion: tls.VersionTLS12})),
	}
	conn, err := grpc.NewClient(*grpcURI, opts...)
	checkErr(err)

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	// Log in user.
	cli := api.NewSessionServiceClient(conn)
	login, err := cli.Login(ctx, &api.LoginRequest{
		Email: flag.Arg(1), OrgName: flag.Arg(0), Password: flag.Arg(2),
	})
	checkErr(err)
	checkErr(conn.Close())

	_, err = fmt.Fprintf(os.Stdout, "Login: %+v\n", login)
	checkErr(err)
}
