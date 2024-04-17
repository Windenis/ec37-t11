#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/OpenIPC/builder/releases/download/latest/t20_lite_ec37-t11-nor.tgz'
#
#
# Set custom majestic settings
#
#cli -s .nightMode.lightMonitor true
cli -s .nightMode.irCutPin1 25
cli -s .nightMode.irCutPin2 26
cli -s .nightMode.backlightPin 50
# GPIO 52 - red led
# GPIO 53 - green led
cli -s .video0.codec h264
#cli -s .audio.speakerPin 63
#
# Set wlan device and credentials if need
#
fw_setenv wlandev rtl8188fu-generic
#fw_setenv wlanssid Router
#fw_setenv wlanpass 12345678
#
#
# Set osmem and rmem
#
fw_setenv osmem 39M
fw_setenv rmem 25M@0x2700000
#
exit 0
