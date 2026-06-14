#!/bin/sh

DOWNLOAD_PATH=$(grep -oP '"download_path"\s*:\s*"\K[^"]+' /data/options.json)
PUID=$(grep -oP '"puid"\s*:\s*\K[0-9]+' /data/options.json)
PGID=$(grep -oP '"pgid"\s*:\s*\K[0-9]+' /data/options.json)

if [ -n "$DOWNLOAD_PATH" ]; then
    export DOWNLOAD_DIR="$DOWNLOAD_PATH"
    export STATE_DIR="$DOWNLOAD_PATH/.metube"
    export TEMP_DIR="$DOWNLOAD_PATH"
fi

[ -n "$PUID" ] && export PUID
[ -n "$PGID" ] && export PGID

exec /app/docker-entrypoint.sh