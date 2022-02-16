.PHONY: generate deps api

generate: deps api

deps:
	pip install grpcio-tools

api:
	python -m grpc_tools.protoc -I=../protobuf -I=/tmp/googleapis \
	-I=/tmp/grpc-gateway -I=/tmp/pgv --python_out=. --grpc_python_out=. \
	api/app_identity.proto \
	api/event.proto \
	api/org.proto \
	api/role.proto \
	api/session.proto \
	api/status.proto \
	api/user.proto
