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

./build-${BASE}.sh

docker run --rm "$DOCKER_IMAGE" psql --version
