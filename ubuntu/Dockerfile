FROM ubuntu:20.04

ENV TZ America/New_York
ENV LANG en_CA.UTF-8
ENV LANGUAGE en_CA:en
ENV LC_ALL en_CA.UTF-8

WORKDIR /data

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y locales tzdata software-properties-common nano wget curl git jq && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN locale-gen ${LANG}

CMD lsb_release -a
