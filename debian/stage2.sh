#!/bin/bash
/debootstrap/debootstrap --second-stage
echo "debian" > /etc/hostname
echo "127.0.0.1     debian" >> /etc/hosts

#boot.d run by /etc/rc.local
mkdir /etc/boot.d
cat <<EOF > /etc/boot.d/services
#!/bin/bash

service ssh start
EOF

chmod +x  /etc/boot.d/services
apt clean