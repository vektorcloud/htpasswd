FROM quay.io/vektorcloud/base:latest

RUN apk add --no-cache openssl
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
