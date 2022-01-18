.PHONY: generate deps common api mod openapi

generate: deps common api mod openapi

deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	go install \
	github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
	go install \
	github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
# Regression in protoc-gen-validate template/go/file.go
# https://github.com/envoyproxy/protoc-gen-validate/issues/552
	go install github.com/envoyproxy/protoc-gen-validate@v0.6.2

common:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/pgv \
	--go_out=. --go_opt=paths=source_relative \
	--validate_out=. --validate_opt=lang=go,paths=source_relative \
	common/role.proto

api:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opt=paths=source_relative \
	--grpc-gateway_out=. --grpc-gateway_opt=paths=source_relative \
	--validate_out=. --validate_opt=lang=go,paths=source_relative \
	api/app_identity.proto \
	api/event.proto \
	api/org.proto \
	api/session.proto \
	api/status.proto \
	api/user.proto

mod:
	echo 'module github.com/ownmfa/api/go' > go.mod
	go get -t -u ./...
	go mod tidy -v

openapi:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--openapiv2_out=../openapi \
	--openapiv2_opt=allow_merge=true,merge_file_name=hermes,openapi_naming_strategy=simple \
	api/openapi.proto \
	api/app_identity.proto \
	api/event.proto \
	api/org.proto \
	api/session.proto \
	api/status.proto \
	api/user.proto
