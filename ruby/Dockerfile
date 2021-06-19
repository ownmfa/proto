# Use Debian to avoid long compile times
FROM ruby:3-slim

RUN apt update && apt upgrade -y
RUN apt install -y --no-install-recommends git make
RUN gem update --system
RUN git clone --depth=1 https://github.com/googleapis/googleapis.git \
/tmp/googleapis
RUN git clone --depth=1 https://github.com/grpc-ecosystem/grpc-gateway.git \
/tmp/grpc-gateway
RUN git clone --depth=1 https://github.com/envoyproxy/protoc-gen-validate.git \
/tmp/pgv

WORKDIR /api
