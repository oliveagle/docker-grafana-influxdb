#!/bin/bash

set -m

CONFIG_FILE="/etc/influxdb/config.toml"

echo "=> Starting InfluxDB ..."
#exec /usr/bin/influxdb -config=${CONFIG_FILE}
mkdir -p /var/log/easydeploy
exec /opt/influxdb/influxd -config=${CONFIG_FILE}
