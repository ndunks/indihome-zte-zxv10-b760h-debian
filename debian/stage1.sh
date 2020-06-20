#!/bin/bash
set -e
if [ -z "$TARGET" ] || [ -z "$DEBOOTSTRAP_DIR" ]; then
	echo "Please run with: make stage1"
fi
. $DEBOOTSTRAP_DIR/functions

exec 4>&1

echo "Creating basic directory structure"
mkdir -p $TARGET/{etc,proc,dev,sys,tmp,usr}
for DIR in bin sbin lib; do
	[ -e $TARGET/usr/$DIR ] || ln -s /$DIR $TARGET/usr/$DIR
	mkdir -p $TARGET/$DIR
done
cp -a $DEBOOTSTRAP_DIR/functions $TARGET/debootstrap/
echo $INCLUDE > $TARGET/debootstrap/includes

echo "Copying busybox from initram"
cp -af ../initram/rootfs/bin/busybox $TARGET/bin/busybox
chmod +x $TARGET/bin/busybox

echo "Copying rootfs"
cp -ar rootfs/* $TARGET

choose_extractor 

for p in $INCLUDE; do
    extract $p
done

mkdir -p "$TARGET/var/lib/dpkg"
	: >"$TARGET/var/lib/dpkg/status"
	: >"$TARGET/var/lib/dpkg/available"
