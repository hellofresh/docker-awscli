# See: https://github.com/gliderlabs/docker-alpine
FROM gliderlabs/alpine:3.3

RUN apk add --update --no-cache \
    python \
    py-pip && \
    pip install virtualenv

RUN virtualenv /env && /env/bin/pip install awscli

ENTRYPOINT ["/env/bin/aws"]
CMD ["--version"]