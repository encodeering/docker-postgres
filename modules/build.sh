#!/usr/bin/env bash
# configuration
#   env.ARCH
#   env.PROJECT
#   env.VERSION
#   env.VERSIONPIN
#   env.REPOSITORY

set -e

import com.encodeering.docker.config
import com.encodeering.docker.docker

docker-pull "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie"

patch -p1 --no-backup-if-mismatch --directory="$PROJECT" < "patch/$VERSION/Dockerfile.patch"

docker build -t "$DOCKER_IMAGE" --build-arg PG_VERSION="$VERSIONPIN" "$PROJECT/$VERSION"

docker run --rm "$DOCKER_IMAGE" psql --version
