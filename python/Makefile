.PHONY: generate deps common api

generate: deps common api

deps:
	pip install grpcio-tools

common:
	python -m grpc_tools.protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/pgv \
	--python_out=src/ownmfa_api \
	common/role.proto

api:
	python -m grpc_tools.protoc -I=../protobuf -I=/tmp/googleapis \
	-I=/tmp/grpc-gateway -I=/tmp/pgv \
	--python_out=src/ownmfa_api --grpc_python_out=src/ownmfa_api \
	api/app_identity.proto \
	api/event.proto \
	api/org.proto \
	api/session.proto \
	api/status.proto \
	api/user.proto
