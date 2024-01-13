.PHONY: generate deps api

generate: deps api

deps:
	dart pub global activate protoc_plugin

api:
	protoc --plugin=protoc-gen-dart=/root/.pub-cache/bin/protoc-gen-dart \
	-I=../protobuf -I=/tmp/googleapis -I=/tmp/grpc-gateway -I=/tmp/pgv \
	--dart_out=grpc:. \
	api/ownmfa_app_identity.proto \
	api/ownmfa_event.proto \
	api/ownmfa_org.proto \
	api/ownmfa_role.proto \
	api/ownmfa_session.proto \
	api/ownmfa_status.proto \
	api/ownmfa_user.proto
