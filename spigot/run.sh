#!/bin/bash

if [ ! -f /minecraft/spigot.jar ]; then
    if [ -d /minecraft/build ]; then
        rm -rf /minecraft/build
    fi
    mkdir -p /minecraft/build

    wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O /minecraft/build/BuildTools.jar
    cd /minecraft/build;HOME=/minecraft/build java -jar BuildTools.jar --rev latest
    cp /minecraft/build/spigot-*.jar /minecraft/spigot.jar
    cd /minecraft
    rm -rf /minecraft/build
fi

if [ ! -f /minecraft/eula.txt ]; then
    echo "eula=true" > /minecraft/eula.txt
fi

java -Xms1G -Xmx1G -jar /minecraft/spigot.jar nogui --noconsole
