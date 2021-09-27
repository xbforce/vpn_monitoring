#!/usr/bin/bash

ifc=$(ping -c 3 -W 20 -I tun0 8.8.8.8)
echo "tun0 interface is connected."

if [[ $ifc == *"0 received"* ]]; then
    DISPLAY=:0.0 notify-send normal -t 20000 "VPN Disconnected!"
    sleep 3
    pkill -f "watch -n"
    exit 0
else
    :
fi

