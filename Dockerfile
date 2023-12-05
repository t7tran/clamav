FROM alpine:3.18.5

COPY --chown=100:101 rootfs /

RUN apk add --no-cache clamav rsyslog clamav-libunrar && \
    mkdir /clamav /run/clamav && \
    chown clamav:clamav /clamav /run/clamav && \
    chmod +x /start.sh && \
# install gettext with envsubst
    wget https://github.com/a8m/envsubst/releases/download/v1.4.2/envsubst-Linux-x86_64 -O /usr/local/bin/envsubst && \
    chmod +x /usr/local/bin/envsubst && \
    rm -rf /apk /tmp/* /var/cache/apk/*

USER clamav

ENTRYPOINT ["/start.sh"]
CMD []
