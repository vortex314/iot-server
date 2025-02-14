docker run --network host --name redis -d -p 6379:6379 --restart=always -v `pwd`/data/redis:/data redis/redis-stack-server:latest

