FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN apt-get update && \
    apt-get install -y mongodb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME ["/data/db"]
WORKDIR /data

EXPOSE 27017
EXPOSE 28017

CMD ["mongod"]
