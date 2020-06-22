#!/system/bin/sh
#. /system/etc/mkshrc
PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:/usr/bin
echo -e "\n\033[32mZTE_Services_OK, Stoppig Android $PATH\033[0m" > /dev/console

# wpa_supplicant -iwlan0  -Dnl80211 -W -c/wpa_supplicant.conf -O/data/misc/wifi/sockets &
pidof wpa_supplicant || setprop ctl.start wpa_supplicant
pidof dhcpcd || setprop ctl.start dhcpcd_wlan0
#setprop ctl.stop zygote
killall app_process
##setprop ctl.stop media
killall mediaserver
##setprop ctl.stop servicemanager
killall servicemanager
##setprop ctl.stop surfaceflinger
killall surfaceflinger
echo -e "\n\033[32mAndroid Stoped\033[0m" > /dev/console
sleep 5
killall autotest || true
#sleep 30

# should starting com.stbmcmain.control
# libCrashRestore should set sys.ZTE_Services_OK 1
# then this script must be retriggered again
#setprop ctl.start zygote &
