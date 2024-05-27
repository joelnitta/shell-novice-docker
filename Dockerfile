FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  man \
  nano \
  apt-utils && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /Users/nelle && \
  useradd -d /Users/nelle -s /bin/bash nelle && \
  mkdir /Users/imhotep && \
  mkdir /Users/larry && \
  cd /Users/nelle/ && \
  mkdir Applications Desktop Documents Downloads Library Movies Music Pictures Public && \
  chown -R nelle:nelle /Users/nelle

# add contents of manpages
RUN yes | unminimize

# Create necessary configuration files and set correct permissions
RUN touch /Users/nelle/.bash_history && \
  touch /Users/nelle/.nano_history && \
  chown nelle:nelle /Users/nelle/.bash_history /Users/nelle/.nano_history

# Don't print entire path at each prompt
RUN echo 'export PS1="\u@\h:\W\$ "' >> /etc/bash.bashrc

USER nelle

WORKDIR /Users/nelle/

ENTRYPOINT [ "bash" ]