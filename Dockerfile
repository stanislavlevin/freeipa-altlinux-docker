FROM library/alt:sisyphus
RUN apt-get update \
    && apt-get install -y systemd-sysvinit su sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/*.bin \
    && control sudo public
ENTRYPOINT [ "/sbin/init" ]
