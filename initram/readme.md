# Customize Initram


## HOW TO REBUILD

```
make

```

## Reffs

- [init source](https://android.googlesource.com/platform/system/core/+/refs/tags/android-4.4.2_r2.0.1/init/init.c)
- [Kernel but Android differ](https://android.googlesource.com/kernel/mediatek/+/android-4.4.4_r3)


## HOW TO EXTRACT

This step has been done, you don't need to do it if you just want to customize ramfs.
Only requiredif you want to edit from scratch.


**Tools:**

``` bash
wget http://whiteboard.ping.se/uploads/Android/unmkbootimg.gz 
gunzip unmkbootimg.gz
chmod +x unmkbootimg
```

**Extract original/boot.img**

```
./tool/unmkbootimg original/boot.img 
unmkbootimg version 1.2 - Mikael Q Kuisma <kuisma@ping.se>
File original/boot.img not a plain boot image, seeking for embedded image ... found!
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
pushd rootfs
dd if=../initramfs.cpio.gz bs=512 skip=1 | gzip -d | cpio -i
popd
```

## SOME INFORMATION


```
cat /proc/bootprof
----------------------------------------
0	    BOOT PROF (unit:msec)
----------------------------------------
      1664        : preloader
       943        : lk
      2058        : lk->Kernel
----------------------------------------
      3233.369692 : Kernel_init_done
      3237.073307 : SElinux start.
      4661.009230 : SElinux end.
      4819.309076 : INIT: on init start
      5065.615538 : INIT:eMMC:Mount_START
      6557.426538 : INIT:eMMC:Mount_END
      6557.542846 : INIT:PROTECT:Mount_START
      6633.706769 : INIT:PROTECT:Mount_END
      6699.861692 : INIT: user build setting
      7696.283461 : BOOT_Animation:START
     12934.388538 : Zygote:Preload Start
     15907.585384 : Zygote:Preload 2774 classes in 2965ms
     17195.616615 : Zygote:Preload 274 obtain resources in 1272ms
     17221.752615 : Zygote:Preload 31 resources in 25ms
     17287.131538 : Zygote:Preload End
     17983.404076 : Android:PackageManagerService_Start
     18458.610307 : Android:PMS_scan_START
     18728.152461 : Android:PMS_scan_done:/custom/framework
     18778.656076 : Android:PMS_scan_done:/system/framework
     19880.020538 : Android:PMS_scan_done:/system/priv-app
     20633.838923 : Android:PMS_scan_done:/system/app
     20634.439000 : Android:PMS_scan_done:/system/vendor/app
     20634.868846 : Android:PMS_scan_done:/system/vendor/operator/app
     20635.283923 : Android:PMS_scan_done:/custom/app
     20643.175923 : Android:PMS_scan_data_start
     21003.898923 : Android:PMS_scan_data_done:/data/app
     21004.207000 : Android:PMS_scan_data_done:/data/app-private
     21004.813000 : Android:PMS_scan_END
     21292.633769 : Android:PMS_READY
     31142.734076 : BOOT_Animation:END
----------------------------------------

```