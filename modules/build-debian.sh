#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

case "$VERSION" in
    9.6) PACKTAG=stretch ;;
    11)  PACKTAG=buster  ;;
    *    ) exit 1
esac

docker-pull "$REPOSITORY/debian-$ARCH:$PACKTAG" "debian:stretch-slim"

docker-patch patch "$PROJECT"

docker-build "$PROJECT/$VERSION"
