FROM ghcr.io/efaille/ubuntu

RUN apt-get update && \
    apt-get install -y lib32gcc-s1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash steam

USER steam
WORKDIR /home/steam

RUN mkdir -p ./steamcmd/ && \
    curl http://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -xz -C ./steamcmd/ && \
    ./steamcmd/steamcmd.sh +quit

CMD ./steamcmd/steamcmd.sh
