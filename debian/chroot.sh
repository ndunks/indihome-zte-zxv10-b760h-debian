#!/bin/bash

ROOTFS="$PWD/tmpfs/debian"
QEMU_ARM=qemu-arm-static
QEMU=$(which $QEMU_ARM)
BINFMT=$(cat /proc/sys/fs/binfmt_misc/status 2> /dev/null)

fail(){
    echo $@
    exit 1
}

[ -d "$ROOTFS" ] || fail "not exists! $ROOTFS"

[ -x "$ROOTFS/bin/busybox" ] || fail "no shell in $ROOTFS"

[ -n "$QEMU" ] || fail "Require $QEMU_ARM to chroot into debian"

[ -n "$BINFMT" ] || fail "Require binfmt_support"

[ "enabled" == "$BINFMT" ] || fail "Please start binfmt_support service"

if [ $EUID != 0 ]; then
    echo 'Must run as root'
    exit 1
fi

STATUS=$(update-binfmts --display qemu-arm 2> /dev/null | grep -o -e 'enabled\|disabled')

if [ "$STATUS" != "enabled" ]; then
    update-binfmts --enable qemu-arm
fi

[ -x $ROOTFS/usr/bin/$QEMU_ARM ] || cp $QEMU $ROOTFS/usr/bin

mount -t proc none $ROOTFS/proc
mount -t sysfs none $ROOTFS/sys
mount -t tmpfs none $ROOTFS/dev
mkdir $ROOTFS/dev/pts
mount -o bind /dev/pts $ROOTFS/dev/pts

if [ -n "$1" ]; then
    echo "$@" | chroot $ROOTFS /bin/busybox sh
else
    if [ -t 0 ]; then
        # interactive
        chroot $ROOTFS /bin/busybox sh -i
    else
        # pipe stdin
        chroot $ROOTFS /bin/busybox sh < /dev/stdin
    fi
fi
echo "chroot.sh: Cleaning up.." 1>&2
umount $ROOTFS/proc
umount $ROOTFS/sys
umount $ROOTFS/dev/pts
umount $ROOTFS/dev