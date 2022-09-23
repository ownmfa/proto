.PHONY: generate deps api

generate: deps api

deps:
	pip install grpcio-tools

api:
	python -m grpc_tools.protoc -I=../protobuf -I=/tmp/googleapis \
	-I=/tmp/grpc-gateway -I=/tmp/pgv --python_out=. --grpc_python_out=. \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_role.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto
