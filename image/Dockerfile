FROM alpine:3.15.1

RUN apk update && \
    apk add openssl strongswan curl nano bash jq libintl libuuid && \
    apk add --virtual build_deps gettext util-linux && \ 
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    cp /usr/bin/uuidgen /usr/local/bin/uuidgen && \
    apk del build_deps && rm -rf /var/cache/apk/* && \
    mkdir /profiles && \
    mkdir /etc/ipsec.d.bk && cp -r /etc/ipsec.d/* /etc/ipsec.d.bk/

COPY ./templates/ /var/templates/
COPY ./scripts/ /usr/local/bin/

EXPOSE 500:500/udp 4500:4500/udp

VOLUME [ "/data", "/etc/ipsec.d" ]
ENTRYPOINT [ "/usr/local/bin/entrypoint" ]
