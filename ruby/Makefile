.PHONY: generate deps common api

generate: deps common api

deps:
	gem install grpc-tools

common:
	grpc_tools_ruby_protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/pgv \
	--ruby_out=. \
	common/role.proto

api:
	grpc_tools_ruby_protoc -I=../protobuf -I=/tmp/googleapis \
	-I=/tmp/grpc-gateway -I=/tmp/pgv --ruby_out=. --grpc_out=. \
	api/app_identity.proto \
	api/event.proto \
	api/org.proto \
	api/session.proto \
	api/status.proto \
	api/user.proto
