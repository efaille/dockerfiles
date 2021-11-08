FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y locales tzdata software-properties-common nano wget curl git jq && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN locale-gen en_CA.UTF-8
ENV LANG='en_CA.UTF-8' LANGUAGE='en_CA:en' LC_ALL='en_CA.UTF-8'
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

WORKDIR /data

CMD lsb_release -a
