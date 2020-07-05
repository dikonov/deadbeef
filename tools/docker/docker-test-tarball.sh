#!/bin/sh

docker build -t deadbeef-test-tarball -f tools/docker/Dockerfile-test-tarball . || exit 1
mkdir -p docker-artifacts
docker run --rm -v ${PWD}/docker-artifacts:/usr/src/deadbeef/portable deadbeef-test-tarball || exit 1
