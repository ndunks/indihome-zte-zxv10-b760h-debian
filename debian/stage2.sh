#!/bin/bash
/debootstrap/debootstrap --second-stage
echo "debian" > /etc/hostname
echo "127.0.0.1     debian" >> /etc/hosts
