#!/bin/sh

DOWNLOAD_PATH=$(grep -oP '"download_path"\s*:\s*"\K[^"]+' /data/options.json)

if [ -n "$DOWNLOAD_PATH" ]; then
    export DOWNLOAD_DIR="$DOWNLOAD_PATH"
    export STATE_DIR="$DOWNLOAD_PATH/.metube"
    export TEMP_DIR="$DOWNLOAD_PATH"
fi

exec /app/docker-entrypoint.sh