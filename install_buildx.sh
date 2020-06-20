#!/bin/bash
export DOCKER_BUILDKIT=1 && docker build --platform=local -o . git://github.com/docker/buildx && mkdir -p ~/.docker/cli-plugins && mv buildx ~/.docker/cli-plugins/docker-buildx && apt install qemu-user-static -y && docker buildx create --use --name build --node build --driver-opt network=host
