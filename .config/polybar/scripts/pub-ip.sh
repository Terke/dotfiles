#!/bin/sh

# credits
# https://linuxconfig.org/polybar-a-better-wm-panel-for-your-linux-system

IP=$(dig -4 TXT +short o-o.myaddr.l.google.com @ns1.google.com)

if pgrep -x openvpn > /dev/null; then
    echo VPN: $IP
else
    echo $IP
fi
