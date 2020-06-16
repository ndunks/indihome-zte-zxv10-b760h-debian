#!/bin/bash

# This script run in android system directory

# change eth0 IP
sed -i s/192.168.1.12/192.168.2.2/ bin/init.zte.post_boot.sh