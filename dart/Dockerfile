FROM dart:3

RUN apt update && apt upgrade -y
RUN apt install -y --no-install-recommends git make protobuf-compiler \
libprotobuf-dev
RUN git clone --depth=1 https://github.com/googleapis/googleapis.git \
/tmp/googleapis
RUN git clone --depth=1 https://github.com/grpc-ecosystem/grpc-gateway.git \
/tmp/grpc-gateway
RUN git clone --depth=1 https://github.com/bufbuild/protoc-gen-validate.git \
/tmp/pgv

WORKDIR /api
