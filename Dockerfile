FROM ubuntu:16.04

LABEL maintainer "Darren Green <darren@gruen.site>"

RUN apt-get update && \
    apt-get install -y dia

VOLUME ["${HOME}/Downloads", "${HOME}/Documents", "${HOME}/.dia"]

ENTRYPOINT ["dia"]

