#!/bin/bash

if [ "$1" == "" ] ;then
	exit 1;
fi

TAG="$1"

VERSION="latest"
if [ "$2" != "" ];then
	VERSION="$2"
fi

DIRECTORY="."

if [ "$3" != "" ];then
	DIRECTORY="$3"
fi

docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $TAG:$VERSION --push $DIRECTORY
