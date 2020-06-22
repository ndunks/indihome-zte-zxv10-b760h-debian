#!/system/bin/sh
#. /system/etc/mkshrc
PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:/usr/bin
echo -e "\n\033[32mZTE_Services_OK, Stoppig Android\033[0m" > /dev/console
cek_wifi(){
    
    pidof wpa_supplicant || wpa_supplicant -iwlan0 -Dnl80211 -c/wpa_supplicant.conf -O/data/misc/wifi/sockets &
    pidof dhcpcd || dhcpcd -BK wlan0 -c /system/etc/dhcpcd/dhcpcd-run-hooks &
    #pidof wpa_supplicant || setprop ctl.start wpa_supplicant
    #pidof dhcpcd || setprop ctl.start dhcpcd_wlan0
}
cek_wifi

setprop ctl.stop zygote &
setprop ctl.stop media &
#setprop ctl.stop servicemanager &
setprop ctl.stop surfaceflinger &
killall app_process mediaserver surfaceflinger netd &
sleep 5 && killall autotest || true
# netwatcher
COUNTER=0
echo on > /proc/ledlight/netred/state
while ! ping -c 1 -q -W 5 1.1.1.1 > /dev/null 2>&1; do
    
    echo off > /proc/ledlight/netgreen/state
    COUNTER=$(($COUNTER+1))
    if [ $COUNTER -ge 10 ]; then
        echo "Tired waiting.."  > /dev/console
        reboot
    fi
    echo "Wait inet $COUNTER"  > /dev/console
    cek_wifi
    echo on > /proc/ledlight/netgreen/state
    sleep 5
done
echo off > /proc/ledlight/netred/state

sleep 60
# should starting com.stbmcmain.control
# libCrashRestore should set sys.ZTE_Services_OK 1
# then this script must be retriggered again
echo -e "\n\033[32mRestarting Android\033[0m" > /dev/console
mediaserver &
setprop ctl.start media &
#setprop ctl.start servicemanager &
setprop ctl.start surfaceflinger &
setprop ctl.start zygote &
