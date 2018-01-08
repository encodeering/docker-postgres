#!/usr/bin/env bash

set -e

import com.encodeering.docker.config
import com.encodeering.docker.docker

./build-${BASE}.sh

docker run --rm "$DOCKER_IMAGE" psql --version
