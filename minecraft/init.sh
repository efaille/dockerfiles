#!/bin/sh

get_latest_minecraft_server() {
  local version_manifest_url="https://launchermeta.mojang.com/mc/game/version_manifest.json"

  local version_manifest=$(curl -s $version_manifest_url)
  local latest_release_id=$(echo $version_manifest | jq -r ".latest.release")
  local server_manifest_url=$(echo $version_manifest | jq -r ".versions[] | select(.id == \"$latest_release_id\").url")
  local server_url=$(curl -s $server_manifest_url | jq -r ".downloads.server.url")

  curl $server_url -o /data/minecraft_server.jar
}

init() {
  get_latest_minecraft_server

  if [ ! -f /data/eula.txt ]; then
    echo "eula=true" > /data/eula.txt
  fi
}

init
