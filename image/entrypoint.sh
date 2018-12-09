#!/bin/bash

set -e

if [ -z "$SHARED_SECRET" ]
then
    SHARED_SECRET="$(openssl rand -base64 128 2>/dev/null)"
fi

if [ ! -f /config/shared.secret ]
then
    echo ${SHARED_SECRET} > /config/shared.secret
fi

echo ": PSK \"${SHARED_SECRET}\"" > /etc/ipsec.secrets

if [ $# -eq 0 ]
then
    exec /usr/bin/start-vpn
else
    exec ${*}
fi
