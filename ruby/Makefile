.PHONY: generate api

generate: api

api:
	protoc --plugin=protoc-gen-grpc=/usr/bin/grpc_ruby_plugin -I=../protobuf \
	-I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv --ruby_out=. \
	--grpc_out=. \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_role.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto
