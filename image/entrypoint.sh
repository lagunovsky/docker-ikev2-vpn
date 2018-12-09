#!/bin/bash

set -e

if [ -f /config/shared.secret ]
then
    SHARED_SECRET=$(cat /config/shared.secret)
else

    if [ -z "$SHARED_SECRET" ]
    then
        SHARED_SECRET="$(pwgen -s 128 1 2>/dev/null)"
    fi

    echo ${SHARED_SECRET} > /config/shared.secret

fi

echo ": PSK \"${SHARED_SECRET}\"" > /etc/ipsec.secrets

if [ $# -eq 0 ]
then
    exec /usr/bin/start-vpn
else
    exec ${*}
fi
