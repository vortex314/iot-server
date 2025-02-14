docker run --init --name=zenoh --net=host -i -v $(pwd):/zenoh -d --restart=always eclipse/zenoh -c /zenoh/config.json5
