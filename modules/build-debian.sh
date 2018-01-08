#!/usr/bin/env bash

set -e

import com.encodeering.docker.config
import com.encodeering.docker.docker

patch -p1 --no-backup-if-mismatch --directory="$PROJECT" < "patch/$BASE/$VERSION/Dockerfile.patch"

docker-pull "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie"

docker build -t "$DOCKER_IMAGE" "$PROJECT/$VERSION"
