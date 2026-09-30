#!/bin/bash
networks=$(nmcli -t -f SSID,SIGNAL,SECURITY dev wifi list | awk -F: '
  $1 != "" {
    ssid=$1
    signal=$2
    sec=$3
    if (sec ~ /WPA|WEP/) icon=""
    else icon=""
    printf "%s  %s  %s%%\n", icon, ssid, signal
  }' | sort -k3 -nr | uniq)

chosen=$(echo -e "$networks" | rofi -dmenu -i -p "Wi-Fi" -theme-str 'window {width: 350px;}' )

if [ -n "$chosen" ]; then
    ssid=$(echo "$chosen" | awk '{print $2}')
    nmcli dev wifi connect "$ssid"
fi

chmod +x ~/.config/polybar/scripts/network-menu.sh