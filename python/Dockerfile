# Use Debian to avoid long compile times
# aarch64: https://pypi.org/project/grpcio/#files
FROM python:3.12-slim

RUN apt update && apt upgrade -y
RUN apt install -y --no-install-recommends git make
RUN pip list --outdated
RUN pip install -U pip setuptools wheel
RUN git clone --depth=1 https://github.com/googleapis/googleapis.git \
/tmp/googleapis
RUN git clone --depth=1 https://github.com/grpc-ecosystem/grpc-gateway.git \
/tmp/grpc-gateway
RUN git clone --depth=1 https://github.com/bufbuild/protoc-gen-validate.git \
/tmp/pgv

WORKDIR /api
