ARG BUILD_FROM=ghcr.io/alexta69/metube:latest
FROM ${BUILD_FROM}

RUN apk add --no-cache bash

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]