.PHONY: generate go clean

VERSION = 0.1.4

generate: version
	docker-compose build --no-cache --pull
	docker-compose up
	docker-compose down

version:
	sed -e "s/APIVERSION/$(VERSION)/" protobuf/api/openapi-templ.proto > \
	protobuf/api/openapi.proto

go: version
	docker-compose build --no-cache --pull go_openapi
	docker-compose up go_openapi
	docker-compose down

tag:
	git tag -s v$(VERSION) -m "Version $(VERSION)"
	git tag -s go/v$(VERSION) -m "Version $(VERSION)"
	git push --tags
	go list -m github.com/ownmfa/api/go@v$(VERSION)

clean:
	find . -name '*.pb*.go' -type f|xargs rm -v
	find . -name '*_pb2*.py' -type f|xargs rm -v
	rm -fv openapi/hermes.swagger.json
