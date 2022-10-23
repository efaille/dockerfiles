FROM ghcr.io/efaille/steamcmd

RUN ./steamcmd/steamcmd.sh +force_install_dir /home/steam/satisfactoryserver +login anonymous +app_update 1690800 +quit

RUN mkdir -p ./.steam/sdk64 && \
    ln -s /home/steam/steamcmd/linux64/steamclient.so /home/steam/.steam/sdk64/

CMD ./satisfactoryserver/FactoryServer.sh

EXPOSE 15777/udp
EXPOSE 15000/udp
EXPOSE 7777/udp

VOLUME [ "/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server" ]
