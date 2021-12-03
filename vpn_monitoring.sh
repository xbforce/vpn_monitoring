#!/usr/bin/bash

if [[ -z $1 ]]; then
    printf "[*] twitter.com/xbforce | github.com/xbforce"
    printf "[*] Usage: $0 <interface>"
    exit 0
fi

ifc=$(ping -c 5 -W 10 -I $1 8.8.8.8)
echo "$1 interface is connected."

if [[ $ifc == *"0 received"* ]]; then
    DISPLAY=:0.0 notify-send -u critical -i /home/kali/Pictures/redcross1.png -t 20000 "VPN Disconnected!"
    sleep 3
    pkill -f "watch -n"
    exit 0
else
    :
fi
