#!/bin/sh
set -v
mkdir tmp
cp ../../redisBrain/build/redisBrain tmp/ # get executable outside docker context
docker build -t redis_brain .
rm -rf tmp
# docker container commit redisBrain lieven/redisBrain:latest
docker tag redis_brain lieven/redis_brain:latest
docker push lieven/redis_brain:latest
echo "====== BUILD and PUSH complete ======"
