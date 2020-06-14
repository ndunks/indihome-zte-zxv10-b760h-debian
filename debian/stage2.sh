#!/bin/bash
/debootstrap/debootstrap --second-stage
echo "debian" > /etc/hostname
echo "127.0.0.1     debian" >> /etc/hosts
echo "127.0.0.1     localhost" >> /etc/hosts

#boot.d run by /etc/rc.local
mkdir /etc/boot.d
cat <<EOF > /etc/boot.d/services
#!/bin/bash

service ssh start
EOF

chmod +x  /etc/boot.d/services
# inet for apt
addgroup --gid 3003 android_inet
usermod -g 3003 _apt
echo nameserver 1.1.1.1 > /etc/resolv.conf

sed -i s/localhost/192.168.1.10/ /etc/apt/sources.list

cat <<EOF > /etc/default/locale
LANG=en_US.UTF-8
LANGUAGE=en_US:en
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="en_US.UTF-8"
LC_NAME="en_US.UTF-8"
LC_ADDRESS="en_US.UTF-8"
LC_TELEPHONE="en_US.UTF-8"
LC_MEASUREMENT="en_US.UTF-8"
LC_IDENTIFICATION="en_US.UTF-8"
LC_ALL=
EOF

apt clean