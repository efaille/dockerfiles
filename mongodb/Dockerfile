FROM ghcr.io/efaille/ubuntu

RUN apt-get update && \
    apt-get install -y mongodb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 27017 28017

CMD mongod
