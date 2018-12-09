#!/bin/bash

set -e

if [ -z "$SHARED_SECRET" ]
then
    SHARED_SECRET="$(openssl rand -base64 128 2>/dev/null)"
fi

if [ ! -f /config/ipsec.secrets ]
then
    echo ": PSK \"${SHARED_SECRET}\"" > /config/ipsec.secrets
fi

echo /config/ipsec.secrets > /etc/ipsec.secrets

if [ $# -eq 0 ]
then
    exec /usr/bin/start-vpn
else
    exec ${*}
fi
