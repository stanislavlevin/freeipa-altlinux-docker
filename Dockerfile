FROM library/alt:sisyphus
RUN apt-get update \
    && apt-get install -y systemd-sysvinit su sudo \
    && apt-get clean \
    && find /var/lib/apt/lists/ -type f -exec rm "{}" \; \
    && rm -rf /var/cache/apt/*.bin \
    && control sudo public
ENTRYPOINT [ "/sbin/init" ]
