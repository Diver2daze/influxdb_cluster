#!/bin/bash
set -e

INFLUXDB_HOSTNAME=${INFLUXDB_HOSTNAME:-$HOSTNAME}

if [ "${1:0:1}" = '-' ]; then
    set -- influxd "$@"
fi

exec "$@"
