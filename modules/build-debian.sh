#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

patch -p1 --no-backup-if-mismatch --directory="$PROJECT" < "patch/$BASE/$VERSION/Dockerfile.patch"

docker-pull "$REPOSITORY/debian-$ARCH:jessie" "debian:jessie"

docker-build "$PROJECT/$VERSION"
