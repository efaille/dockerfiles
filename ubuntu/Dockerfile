FROM ubuntu:18.04
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y locales tzdata software-properties-common nano wget curl git jq && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set language
RUN locale-gen en_CA.UTF-8
ENV LANG='en_CA.UTF-8' LANGUAGE='en_CA:en' LC_ALL='en_CA.UTF-8'

# Set timezone
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

CMD ["cat", "/etc/lsb-release"]
