#!/bin/sh
# supposing ws2redis executable is in local dir
docker build -t ws2redis .
# docker container commit ws2redis lieven/ws2redis:latest
docker tag ws2redis lieven/ws2redis:latest
docker push lieven/ws2redis:latest
echo "====== BUILD and PUSH complete ======"
