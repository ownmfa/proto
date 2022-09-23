.PHONY: generate deps api mod openapi

generate: deps api mod openapi

deps:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	go install \
	github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
	go install \
	github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
	go install github.com/envoyproxy/protoc-gen-validate@latest

api:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opt=paths=source_relative \
	--grpc-gateway_out=. --grpc-gateway_opt=paths=source_relative \
	--validate_out=. --validate_opt=lang=go,paths=source_relative \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_role.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto

mod:
	echo 'module github.com/ownmfa/api/go' > go.mod
	go get -t -u ./...
	go mod tidy -v

openapi:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--openapiv2_out=../openapi \
	--openapiv2_opt=allow_merge=true,merge_file_name=hermes,openapi_naming_strategy=simple \
	api/ownmfa_openapi.proto \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto
