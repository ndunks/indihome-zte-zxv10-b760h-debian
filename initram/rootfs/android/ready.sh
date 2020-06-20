#!/system/xbin/busybox sh
echo -e "\n\033[32mZTE_Services_OK CC \033[0m" > /dev/console
setprop ctl.start wpa_supplicant
dhcpcd -BK -dd wlan0 &
