#!/system/xbin/busybox sh
. /system/bin/etc/mkshrc
echo -e "\n\033[32mZTE_Services_OK CC \033[0m" > /dev/console
setprop ctl.start wpa_supplicant
dhcpcd -BK -dd wlan0 &
killall adbd
adbd &
