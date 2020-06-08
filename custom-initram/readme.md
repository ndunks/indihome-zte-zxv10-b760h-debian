# Customize Initram

## HOW TO REBUILD





## HOW TO EXTRACT

This step has ben done, you don't need to do it if you just want to customize ramfs.
Only requiredif you want to update ramfs.


**Tools:**

``` bash
wget http://whiteboard.ping.se/uploads/Android/unmkbootimg.gz 
gunzip unmkbootimg.gz
chmod +x unmkbootimg
```

**Extract ../original/boot.img**

```
./unmkbootimg ../original/boot.img 
unmkbootimg version 1.2 - Mikael Q Kuisma <kuisma@ping.se>
File ../original/boot.img not a plain boot image, seeking for embedded image ... found!
Kernel size 3920752
Kernel address 0x10008000
Ramdisk size 863292
Ramdisk address 0x11000000
Secondary size 0
Secondary address 0x10f00000
Kernel tags address 0x10000100
Flash page size 2048
Board name is "20181123.235335"
Command line ""
This image is built using standard mkbootimg
Extracting kernel to file zImage ...
Extracting root filesystem to file initramfs.cpio.gz ...
All done.
---------------
To recompile this image, use:
  mkbootimg --kernel zImage --ramdisk initramfs.cpio.gz --board '20181123.235335' -o new_boot.img
```

**Extract initramfs**

``` bash
mkdir rootfs
cd rootfs
dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -i

```
