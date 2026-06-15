#!/bin/sh

DOWNLOAD_PATH=$(python3 -c 'import json; print(json.load(open("/data/options.json"))["download_path"])')

export DOWNLOAD_DIR="$DOWNLOAD_PATH"
export STATE_DIR="$DOWNLOAD_PATH/.metube"
export TEMP_DIR="$DOWNLOAD_PATH"
export PUID=0
export PGID=0

echo "DOWNLOAD_DIR=$DOWNLOAD_DIR"
echo "STATE_DIR=$STATE_DIR"
echo "TEMP_DIR=$TEMP_DIR"
echo "PUID=$PUID"
echo "PGID=$PGID"

exec /app/docker-entrypoint.sh