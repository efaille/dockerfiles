FROM ghcr.io/efaille/ubuntu

RUN apt-get update && \
    apt-get install -y lib32gcc1 libstdc++6 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /home/steam

RUN mkdir -p ./steamcmd/ && \
    curl http://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -xz -C ./steamcmd/ && \
    ./steamcmd/steamcmd.sh +quit && \
    mkdir -p ./.steam/sdk32 && ln -s ./steamcmd/linux32/steamclient.so ./.steam/sdk32/steamclient.so

ENTRYPOINT [ "./steamcmd/steamcmd.sh" ]
