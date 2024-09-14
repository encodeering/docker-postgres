#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/alpine-$ARCH:3.20" "alpine:3.20"

docker-build "$PROJECT/$VERSION/alpine3.20"
