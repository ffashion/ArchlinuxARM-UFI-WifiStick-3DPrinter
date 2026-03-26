#!/bin/bash

# NetWork
WIFI_SSID=${SSID-3dprinter}
WIFI_PASSWD=${PASSWD-12345678}

nmcli c add type wifi con-name ${WIFI_SSID} ifname wlan0 ssid ${WIFI_SSID} wifi-sec.key-mgmt wpa-psk wifi-sec.psk ${WIFI_PASSWD} connection.autoconnect yes

nmcli c down 3dprinter

systemctl disable hotspot

systemctl enable usb_host
