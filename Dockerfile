FROM alpine:latest
RUN apk add --no-cache libgcc libstdc++ gcompat
RUN mkdir /app
RUN mkdir /data
RUN mkdir /data/log
COPY tmp/udp2redis /app/udp2redis
COPY udp2redis/udp2redis.json /app/udp2redis.json
CMD ["/app/udp2redis","-f","/app/udp2redis.json"]

