FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Install node
RUN curl -sL https://deb.nodesource.com/setup_6.x | sh && \
    apt-get update && apt-get install -y nodejs

WORKDIR /data

CMD ["node", "--version"]
