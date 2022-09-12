# RedisJSON armv7
Unofficial rebuild of [RedisJSON](https://github.com/RedisJSON/RedisJSON) for Docker armv7.

Multi stage build:
- Official [ReJSON](https://github.com/RedisJSON/RedisJSON) cloned from release tag.
- Into official [Rust](https://hub.docker.com/_/rust) container to build from source.
- Official [Redis](https://hub.docker.com/_/redis) container to load the module at start.

Image available at [`n433m/rejson`](https://hub.docker.com/r/n433m/rejson).
