#!/bin/sh

#reset iwn0
ifconfig iwn0 -nwid -bssid -wpa -wpakey -chan down
v_nwid="my_hotspot"
v_bssid="xx:xx:xx:xx:xx:xx"
v_wpakey="12345678"

#connect to my_hotspot
ifconfig iwn0 nwid $v_nwid bssid $v_bssid wpa wpakey $v_wpakey up

#configure dhcp
dhclient iwn0
