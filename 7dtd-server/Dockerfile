FROM ghcr.io/efaille/steamcmd

RUN ./steamcmd/steamcmd.sh +force_install_dir /home/steam/7dtdserver +login anonymous +app_update 294420 +quit

RUN mkdir -p ./.steam/sdk64 && \
    ln -s /home/steam/steamcmd/linux64/steamclient.so /home/steam/.steam/sdk64/

EXPOSE 8080/tcp 8081/tcp 26900/tcp 26900/udp 26901/udp 26902/udp

CMD ./7dtdserver/7DaysToDieServer.x86_64 \
    -configfile=./7dtdserver/serverconfig.xml \
    -logfile ./7dtdserver/log/7dtd-server-$(date +%Y%m%d).log \
    -quit -batchmode -nographics -dedicated
