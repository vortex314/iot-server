docker run --init --name=zenoh --net=host -i -e "RUST_LOG=debug" -v $(pwd):/zenoh -d --restart=always eclipse/zenoh -c /zenoh/config.json5 
