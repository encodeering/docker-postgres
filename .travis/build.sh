#!/bin/bash

set -ev

TAG="$REPOSITORY/$PROJECT-$ARCH"
TAGSPECIFIER="$VERSION"

docker pull   "$REPOSITORY/debian-$ARCH:jessie"
docker tag -f "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie"

docker build -t "$TAG:$TAGSPECIFIER" "$PROJECT/$VERSION"
