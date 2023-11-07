.PHONY: generate version go python tag clean

VERSION = 1.0.28

generate: version
	docker-compose --progress=plain build --no-cache --pull
	docker-compose up
	docker-compose down

version:
	sed -e "s/APIVERSION/$(VERSION)/" \
	protobuf/api/ownmfa_openapi-templ.proto > protobuf/api/ownmfa_openapi.proto

go: version
	docker-compose --progress=plain build --no-cache --pull go_openapi
	docker-compose up go_openapi
	docker-compose down

python: version
	docker-compose --progress=plain build --no-cache --pull python
	docker-compose up python
	docker-compose down

tag:
	git tag -s v$(VERSION) -m "Version $(VERSION)"
	git tag -s go/v$(VERSION) -m "Version $(VERSION)"
	git push --tags
	# List may fail if repo is private
	go list -m github.com/ownmfa/api/go@v$(VERSION)

clean:
	find . -name '*.pb*.go' -type f|xargs rm -v
	find . -name '*_pb2*.py*' -type f|xargs rm -v
	rm -fv openapi/hermes.swagger.json
	rm -fv protobuf/api/ownmfa_openapi.proto
	rm -fv go/example/login/login
	rm -fv go/example/identity/identity
