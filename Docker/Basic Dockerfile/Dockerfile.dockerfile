FROM alpine:latest
ENTRYPOINT ["sh", "-c", "echo Hello, $NAME"]
