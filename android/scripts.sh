#!/bin/bash

# This script run in android system directory

# change default static eth0 IP
sed -i s/192.168.1.12/192.168.2.2/ bin/init.zte.post_boot.sh
# enable DHCP Client on eth0
echo "dhcpcd -BK -dd eth0 &" >> bin/init.zte.post_boot.sh
echo "setprop ctl.start adbd" >> bin/init.zte.post_boot.sh
