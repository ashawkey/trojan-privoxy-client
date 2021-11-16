#!/bin/sh

privoxy --no-daemon /etc/privoxy/config &

/trojan/trojan --config=/etc/trojan/config.json
