FROM ghcr.io/efaille/java

COPY init.sh start.sh /
RUN chmod +x /init.sh /start.sh

EXPOSE 25565 25575

ENTRYPOINT /start.sh
