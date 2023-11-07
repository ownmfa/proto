# OwnMFA API

This repository contains the
[Protobuf](https://developers.google.com/protocol-buffers/) and
[gRPC](https://grpc.io/) definitions for the
[OwnMFA](https://www.ownmfa.com/) Hermes platform. API design is based
on the Google [API Design Guide](https://cloud.google.com/apis/design).

## Getting Started

### Go

Documentation: https://pkg.go.dev/github.com/ownmfa/api/go

```
go get -u github.com/ownmfa/api/go
```

Example gRPC code: `go/example/`

### Python

The Python package can be copied locally from this repository or regenerated
using the Protobuf definitions. See the
[gRPC Python quick start](https://grpc.io/docs/languages/python/quickstart/) for
more information.

## Building

These instructions require
[Docker](https://docs.docker.com/get-started/overview/) and
[Docker Compose](https://docs.docker.com/compose/) (V1 or V2) to be installed.

```
make
```
