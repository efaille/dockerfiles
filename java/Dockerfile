FROM efaille/ubuntu
MAINTAINER Erick Faille "efaille@gmail.com"

# Install java
RUN add-apt-repository -y ppa:openjdk-r/ppa && apt-get update && \
    apt-get install -y openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

WORKDIR /data

CMD ["java", "-version"]
