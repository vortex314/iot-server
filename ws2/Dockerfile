FROM alpine:latest
RUN apk add --no-cache libgcc libstdc++ gcompat
RUN mkdir /app
RUN mkdir /data
RUN mkdir /data/log
COPY ws2redis /app/ws2redis
COPY ws2redis.json /app/ws2redis.json
CMD ["/app/ws2redis","-f","/app/ws2redis.json"]

