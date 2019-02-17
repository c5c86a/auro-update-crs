#!/bin/sh -ex

exec > /dev/stderr 2>&1

ntpd -p pool.ntp.org

echo "0 * * * * sh /cron.sh" | crontab -

crond -f
