FROM efaille/java
MAINTAINER Erick Faille "efaille@gmail.com"

# Update & Install & Clean
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["mvn", "-version"]
