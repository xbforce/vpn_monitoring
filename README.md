# vpn_monitoring

Monitor openvpn. This tool alerts you if the VPN disconnects.

**Usage**
- ```git clone https://github.com/xbforce/vpn_monitoring```

- ```cd vpn_monitoring```

- ```sudo cp vpn_monitoring.sh /usr/local/bin/```

- ```$ watch -n20 vpn_monitoring.sh tun0```

- The command above checks every 20 seconds to see if the tun0 interface is still connected.

- Move the ```redcross1.png``` file in ```/home/kali/Pictures/``` directory, or change the directory in the script.
