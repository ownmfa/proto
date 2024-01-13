.PHONY: generate api

generate: api

api:
	protoc -I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--ruby_out=grpc:. \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_role.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto
