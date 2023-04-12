FROM alpine:3.17.3

RUN apk add --no-cache --no-progress openssh-client-default ca-certificates

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]