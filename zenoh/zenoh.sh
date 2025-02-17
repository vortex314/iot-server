docker run --init --name=zenoh --net=host -i -v -e RUST_LOG=debug $(pwd):/zenoh -d --restart=always eclipse/zenoh -c /zenoh/config.json5 
