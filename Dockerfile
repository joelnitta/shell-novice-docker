FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  man \
  apt-utils && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /Users/nelle && \
  useradd -d /Users/nelle -s /bin/bash nelle && \
  mkdir /Users/imhotep && \
  mkdir /Users/larry && \
  cd /Users/nelle/ && \
  mkdir Applications Desktop Documents Downloads Library Movies Music Pictures Public

# add contents of manpages
RUN yes | unminimize

USER nelle

WORKDIR /Users/nelle/

ENTRYPOINT [ "bash" ]