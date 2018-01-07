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

patch -p1 --no-backup-if-mismatch --directory="$PROJECT" < "patch/$BASE/$VERSION/Dockerfile.patch"

docker-pull "$REPOSITORY/alpine-$ARCH:3.7" "alpine:3.5"

docker build -t "$DOCKER_IMAGE" "$PROJECT/$VERSION/alpine"
