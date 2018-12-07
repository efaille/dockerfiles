FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN curl -sL https://deb.nodesource.com/setup_10.x | sh && apt-get update && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD ["node", "--version"]
