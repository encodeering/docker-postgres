#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/debian-$ARCH:bookworm-slim" "debian:bookworm-slim"

docker-build "$PROJECT/$VERSION/bookworm"
