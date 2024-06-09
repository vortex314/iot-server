FROM alpine:latest
RUN apk add --no-cache libgcc libstdc++ gcompat
RUN mkdir /app
RUN mkdir /data
RUN mkdir /data/log
COPY tmp/redisBrain /app/redisBrain
COPY redisBrain.json /app/redisBrain.json
CMD ["/app/redisBrain","-f","/app/redisBrain.json"]

