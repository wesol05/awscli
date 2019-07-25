FROM alpine:3.10
MAINTAINER Tomasz Wesolowski <wesol05@gmail.com>

RUN apk --no-cache add \
      bash \
      curl \
      less \
      jq \
      groff \
      python \
      py-pip \
      py2-pip

RUN pip install --upgrade \
    pip \
    awscli

VOLUME /root/.aws

ENTRYPOINT ["aws", "$@"]
CMD ["help"]
