#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

DOWNLOAD_PATH=$(bashio::config 'download_path')

export DOWNLOAD_DIR="${DOWNLOAD_PATH}"
export STATE_DIR="${DOWNLOAD_PATH}/.metube"

exec ./docker-entrypoint.sh