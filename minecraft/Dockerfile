FROM efaille/java
MAINTAINER Erick Faille "efaille@gmail.com"

RUN useradd -s /bin/bash -d /minecraft -m minecraft
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar /minecraft/minecraft_server.jar
RUN echo "eula=true" > /minecraft/eula.txt && \
    chown -R minecraft:minecraft /minecraft

VOLUME /minecraft
WORKDIR /minecraft
USER minecraft
EXPOSE 25565

ENTRYPOINT java -Xmx1024M -Xms1024M -jar minecraft_server.jar
