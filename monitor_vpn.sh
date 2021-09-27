#!/usr/bin/bash

exit_code=$!

if [[ -z $1 ]] || [[ -z $2 ]]; then
    printf "[*] twitter.com/xbforce | github.com/xbforce\n"
    printf "[*] Usage: $0 <interface> <tool's name>\n"
    exit 0
fi

ifc=$(ping -c 5 -W 20 -I $1 8.8.8.8)
echo "$1 interface is connected."

if [[ $ifc == *"0 received"* ]]; then
    pkill -f $2
    DISPLAY=:0.0 notify-send -u critical -i /home/kali/Pictures/redcross1.png -t 12000 "VPN Disconnected!"
    sleep 3
    pkill -f "watch -n"
    exit 0
else
    :
fi

wait $exit_code

