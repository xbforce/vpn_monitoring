#!/usr/bin/bash

if [[ -z $1 ]]; then
    printf "[*] twitter.com/xbforce | github.com/xbforce"
    printf "[*] Usage: $0 <interface>"
    exit 0
fi

ifc=$(cat /sys/class/net/$1/operstate)
echo "$1 interface is connected."

if [[ $ifc == *"up"* ]] || [[ $ifc == *"unknown"* ]]; then
    :
else
    DISPLAY=:0.0 notify-send -u critical -i "/home/kali/Pictures/redcross1.png" -t 20000 "VPN Disconnected!"
    sleep 3
    pkill -f "watch -n"
    exit 0
fi
