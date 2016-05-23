FROM gliderlabs/alpine:3.3

RUN apk add --update --no-cache \
    python \
    py-pip \
  && pip install virtualenv

ENV WORKD="/app"

WORKDIR ${WORKD}

COPY ./requirements.txt ${WORKD}/requirements.txt

RUN virtualenv /env && /env/bin/pip install -r ${WORKD}/requirements.txt

ENTRYPOINT ["/env/bin/aws"]
CMD ["--version"]