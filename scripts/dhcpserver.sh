#!/bin/bash
if [ -z "$1" ]; then
    IFACE=`ip l | grep ^2: | cut -d ' ' -f2`
    # remove last ':'
    IFACE=${IFACE::-1}
else
	IFACE="$1"
fi

echo "Setup dnsmasq on $IFACE"
# enable inet access
echo 1 | sudo tee  /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

# Ip and Up
sudo ifconfig $IFACE up 192.168.2.1

sudo dnsmasq --no-daemon --log-queries --log-dhcp \
--bind-interfaces --conf-file= --conf-dir= \
--interface=$IFACE --except-interface=lo \
--dhcp-range=192.168.2.100,192.168.2.200,12h \
--listen-address=192.168.2.1