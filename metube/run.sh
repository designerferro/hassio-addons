#!/bin/sh

if [ -f /data/options.json ]; then
    DOWNLOAD_PATH=$(jq -r '.download_path // "/downloads"' /data/options.json)

    export DOWNLOAD_DIR="$DOWNLOAD_PATH"
    export STATE_DIR="$DOWNLOAD_PATH/.metube"
    export TEMP_DIR="$DOWNLOAD_PATH"
fi

exec /app/docker-entrypoint.sh