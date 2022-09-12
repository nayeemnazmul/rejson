#!/bin/bash
# rebuild RedisJSON image

REDIS_VER=7.0.4
REJSON_VER=v2.2.0
RUST_VER=1.63.0

if [[ $(systemctl is-active docker) != 'active' ]]; then
    echo "starting docker"
    sudo systemctl start docker
fi

sudo docker buildx build \
    --build-arg RUST_VER="$RUST_VER" \
    --build-arg REDIS_VER="$REDIS_VER" \
    --build-arg REJSON_VER="$REJSON_VER" \
    --platform linux/arm/v7 \
    -t n433m/rejson:"$REJSON_VER" \
    -t n433m/rejson --push .

##
exit 0
