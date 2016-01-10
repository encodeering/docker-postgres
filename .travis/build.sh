#!/bin/bash

set -ev

TAG="$REPOSITORY/$PROJECT-$ARCH"
TAGSPECIFIER="$VERSION"

docker pull   "$REPOSITORY/debian-$ARCH:jessie"
docker tag -f "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie"

patch -p0 --no-backup-if-mismatch --directory=$PROJECT < .patch/$VERSION/Dockerfile.patch

docker build -t "$TAG:$TAGSPECIFIER" --build-arg PG_VERSION="$VERSIONPIN" "$PROJECT/$VERSION"
