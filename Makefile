.PHONY: generate version go python dart ruby cpp php tag clean

VERSION = 1.1.11

generate: version
	docker compose --progress=plain build --no-cache --pull
	docker compose up --menu=false
	docker compose down

version:
	sed -e "s/APIVERSION/$(VERSION)/" \
	protobuf/api/ownmfa_openapi-templ.proto > protobuf/api/ownmfa_openapi.proto

go: version
	docker compose --progress=plain build --no-cache --pull go_openapi
	docker compose up go_openapi --menu=false
	docker compose down

python: version
	docker compose --progress=plain build --no-cache --pull python
	docker compose up python --menu=false
	docker compose down

dart: version
	docker compose --progress=plain build --no-cache --pull dart
	docker compose up dart --menu=false
	docker compose down

ruby: version
	docker compose --progress=plain build --no-cache --pull ruby
	docker compose up ruby --menu=false
	docker compose down

cpp: version
	docker compose --progress=plain build --no-cache --pull cpp
	docker compose up cpp --menu=false
	docker compose down

php: version
	docker compose --progress=plain build --no-cache --pull php
	docker compose up php --menu=false
	docker compose down

tag:
	git tag -s v$(VERSION) -m "Version $(VERSION)"
	git tag -s go/v$(VERSION) -m "Version $(VERSION)"
	git push --tags
	# List may fail if repo is private
	go list -m github.com/ownmfa/proto/go@v$(VERSION)

clean:
	find . -name '*.pb*.go' -type f|xargs rm -v
	find . -name '*_pb2*.py*' -type f|xargs rm -v
	find . -name '*.pb*.dart' -type f|xargs rm -v
	find . -name '*_pb.rb' -type f|xargs rm -v
	find . -name '*.pb.h' -type f|xargs rm -v
	find . -name '*.pb.cc' -type f|xargs rm -v
	find . -name '*.php' -type f|xargs rm -v
	rm -fv openapi/hermes.swagger.json
	rm -fv protobuf/api/ownmfa_openapi.proto
	rm -fv go/example/login/login
	rm -fv go/example/identity/identity
