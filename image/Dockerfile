FROM debian:9.6-slim

RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt -y install strongswan iptables uuid-runtime ndppd pwgen nano \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/

ADD ./etc/* /etc/
ADD ./bin/* /usr/bin/
ADD ./entrypoint.sh /entrypoint.sh

VOLUME [ "/config" ]

EXPOSE 500/udp 4500/udp

ENTRYPOINT [ "/entrypoint.sh" ]
