## Automatically created docker image for postgres

[![Build Status](https://travis-ci.org/encodeering/docker-postgres.svg?branch=master)](https://travis-ci.org/encodeering/docker-postgres)

### Docker

```docker pull encodeering/postgres-armhf```

- 9.4
- https://hub.docker.com/r/encodeering/postgres-armhf/

```docker pull encodeering/postgres-amd64```

- 9.4
- https://hub.docker.com/r/encodeering/postgres-amd64/

### Modification

We had to remove the layer with the official repository information and make the pinned version configurable.

- 9.4 uses a different pinned version that the official build. Please look at the [patch](.patch/9.4/Dockerfile.patch) for further information.
