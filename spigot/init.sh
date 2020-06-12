#!/bin/sh

get_latest_spigot_release() {
  local build_tools_url="https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar"

  if [ -d /data/build ]; then
    rm -rf /data/build
  fi
  mkdir -p /data/build

  cd /data/build
  curl $build_tools_url -o BuildTools.jar && java -jar BuildTools.jar --rev latest
  cp /data/build/spigot-*.jar /data/spigot.jar

  rm -rf /data/build
}

init() {
  get_latest_spigot_release

  if [ ! -f /data/eula.txt ]; then
    echo "eula=true" > /data/eula.txt
  fi
}

init
