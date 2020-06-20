#!/bin/busybox sh
# This script run in chroot!
set -e
. /etc/os-release
echo "Setup $PRETTY_NAME"

# Install busybox
if [ ! -e busybox-installed ]; then
    echo Installing static busybox..
    for f in $(busybox --list); do
        busybox which $f || busybox ln -s busybox /bin/$f
    done
    touch busybox-installed
fi

# Debootstrap second stage
TARGET=
DEBOOTSTRAP_DIR=/debootstrap
DEBIAN_FRONTEND=noninteractive
DEBCONF_NONINTERACTIVE_SEEN=true
export DEBIAN_FRONTEND DEBCONF_NONINTERACTIVE_SEEN

# open other filedescriptor
exec 4>&1
. $DEBOOTSTRAP_DIR/functions
INCLUDE=$(cat $DEBOOTSTRAP_DIR/includes)
# Depency check
/sbin/ldconfig

dirty_install () {
    local pkg="$1"
    local deb="$(debfor $pkg)"
    local ver="$(dpkg-deb -f "$deb" Version)"
    mkdir -p /var/lib/dpkg/info
    cat <<EOF >> /var/lib/dpkg/status
Package: $pkg
Version: $ver
Description: $pkg Dirty install
Maintainer: unknown
Architecture: armel
Status: install ok installed
EOF
    touch /var/lib/dpkg/info/${pkg}.list
}

#dirty_install dpkg

predepends="dpkg"
required=$(without "$INCLUDE" "$predepends")

for pkg in $(debfor $predepends); do
    echo "Install $pkg"
    dpkg --force-depends --install $pkg
done

dpkg --force-depends --unpack $(debfor $required)
dpkg --configure --pending --force-configure-any --force-depends

# System setup

cat <<EOF >> /etc/apt/sources.list
deb $DEBIAN_REPO $VERSION_CODENAME main
EOF

cat <<EOF >> /etc/profile
export LANG=C
export LANGUAGE=C
export LC_ALL=C
EOF
# inet for apt
busybox addgroup _apt
busybox addgroup --gid 3003 android_inet
usermod -g 3003 _apt

apt updte
apt install -y dropbear-bin

# Save space
rm -rf /usr/share/doc/
rm -rf /usr/share/man/
rm -rf /usr/share/locale/
rm -rf /lib/systemd/system/
apt clean