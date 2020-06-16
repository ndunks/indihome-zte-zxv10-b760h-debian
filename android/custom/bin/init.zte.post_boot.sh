#!/system/bin/sh
# increase receive socket buffer
echo 131072 > /proc/sys/net/core/rmem_default
echo 4194304 > /proc/sys/net/core/rmem_max
echo 4194304 > /proc/sys/net/core/wmem_max
echo 4096 174760 11264000 > /proc/sys/net/ipv4/tcp_rmem
echo 4096 16384 4194304 > /proc/sys/net/ipv4/tcp_wmem
echo 5 > /proc/sys/net/ipv4/tcp_syn_retries
echo 5 > /proc/sys/net/ipv4/tcp_synack_retries
echo 300 > /proc/sys/net/unix/max_dgram_qlen
setprop net.tcp.buffersize.default 4096,174760,11264000,4096,16384,4194304

ifconfig eth0 192.168.2.2 netmask 255.255.255.0
#dhcpcd -BK -dd eth0 &
busybox telnetd -l /system/bin/sh
#netaccess &
