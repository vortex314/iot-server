#!/bin/sh
mkdir tmp
cp ../serial2redis/build/udp2redis tmp/ # get executable outside docker context
docker build -t udp2redis .
rm -rf tmp
# docker container commit udp2redis lieven/udp2redis:latest
docker tag udp2redis lieven/udp2redis:latest
docker push lieven/udp2redis:latest
echo "====== BUILD and PUSH complete ======"
