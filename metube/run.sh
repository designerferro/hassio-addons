#!/bin/sh

DOWNLOAD_PATH=$(python3 -c 'import json; print(json.load(open("/data/options.json"))["download_path"])')
PUID=$(python3 -c 'import json; print(json.load(open("/data/options.json"))["puid"])')
PGID=$(python3 -c 'import json; print(json.load(open("/data/options.json"))["pgid"])')

export DOWNLOAD_DIR="$DOWNLOAD_PATH"
export STATE_DIR="$DOWNLOAD_PATH/.metube"
export TEMP_DIR="$DOWNLOAD_PATH"

export PUID="$PUID"
export PGID="$PGID"

echo "DOWNLOAD_DIR=$DOWNLOAD_DIR"
echo "STATE_DIR=$STATE_DIR"
echo "TEMP_DIR=$TEMP_DIR"
echo "PUID=$PUID"
echo "PGID=$PGID"

exec /app/docker-entrypoint.sh