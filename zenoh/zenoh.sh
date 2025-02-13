docker run --init --net=host -p 7447:7447/tcp -p 8000:8000/tcp -v $(pwd)/plugins:/root/.zenoh -d --restart=always eclipse/zenoh
