# Indihome ZTE ZXV10 B760H Debian with Original Kernel

	Android STB / TV Box Mediatek MT8127 RichMedia Indihome ZTE ZXV10 B760H

## Base 

**Kernel & Android Version**
```
Linux localhost 3.4.67 #1 SMP PREEMPT Wed Jun 7 18:15:22 HKT 2017 armv7l GNU/Linux
Android 4.4.2 Kitkat

```
**build.prop**
``` bash
ro.build.version.sdk=19
ro.build.version.codename=REL
ro.build.version.release=4.4.2
ro.build.date=Fri Nov 23 23:59:31 HKT 2018
ro.build.date.utc=1542988771
ro.build.type=user
ro.build.display.id=V73411318.1024
ro.build.user=android-builder
ro.build.host=ubuntu-129
ro.build.tags=release-keys
# ro.build.product is obsolete; use ro.product.device
ro.build.product=ztemt85_bx_kk
# Do not try to parse ro.build.description or .fingerprint
ro.build.description=ztemt85_bx_kk-user 4.4.2 KOT49H eng.stb-android.20181123.235335 release-keys
ro.build.flavor=
ro.build.characteristics=tablet
ro.build.fingerprint=Mebox/ztemt85_bx_kk/ztemt85_bx_kk:4.4.2/KOT49H/20181123.235335:user/release-keys
ro.build.version.incremental=V73411318.1024
ro.product.screenzoom.unit=permillage
ro.product.wifi=1
ro.product.build.date=2018-11-23
ro.product.version.software=V73411318.1024
ro.product.version.base=V73411318.1007 2016-11-09
ro.product.brand=Mebox
ro.product.device=ztemt85_bx_kk
ro.product.board=MT8685
ro.product.cpu.abi=armeabi-v7a
ro.product.cpu.abi2=armeabi
ro.product.manufacturer=ZTE Corporation
ro.product.locale.language=en
ro.product.locale.region=US
# ro.build.product is obsolete; use ro.product.device
ro.product.name=B760H
```

## Requirements

	- Linux Debian Based x86_64
	- at least 4GB RAM (reduce without tmpfs)
	- GNU Make
	- SP Flash Tool
	- Debootstrap
	- Qemu User Static
	- BinFmt

## MODE

### Android under linux

```
make android_under_debian
```
perintah diatas akan membuild kostum initramfs dan juga debian system (debootstrap)

Flash manual using spflash tool:
```
result/boot.img   --> BOOTIMG
result/debian.img --> USRDATA
```

## BUILD CONFIG

Some make variables can be changed from `.env' files, example:
```
export FLASH_TOOL = /ext4/SP-Flash-Tool/flash_tool.sh
export DEBIAN_REPO=http://localhost:3142/kambing.ui.ac.id/debian/

```

## HOW TO

### Using SP_Flash_Tool

- Download SP Flash tool [here](https://spflashtool.com/download/)
- extract to directory
- invoke make command with `make FLASH_TOOL=/extracted/sp_flash_tool/flash_tool.sh [target]`
- PowerOff before flasing, insert USB-to-USB cable after invoke command
- scatter file in [flash](flash) directory

### Build ramdisk
Build boot image with stock kernel and custom initram from [initram/rootfs](initram/rootfs).
``` bash
make initram
```
Output is `result/boot.img` and `result/initramfs.gzip.cpio`.

### Flash initram only

``` bash
make flash_initram
# or rebuild and flash
make update_initram
```

	- Dont forget to call `make clean_initram` if you modify [rootfs](initram/rootfs) on initram before call `make flash_initram`.
	- Dont forget to do full backup your device `make backup`

### Full backup your device

```
make backup
```


### USB-TTL Tips

if device fail boot, press CTRL-F to activate fiq-debug, then run command `reboot`. If there's SP_Flash_Tool waiting, the flashing will occured. So you
don't need to re-attach your USB port

file stored on `backup` directory

## Android Tips
### Wifi
```
echo 1 > /dev/wmtWifi
# if return zero, mean oK
```

where module that set property `wlan.driver.status=ok` ?


### LAN eth0 Connection

Pastikan custom rom sudah di flash. STB sudah di set static ip,
cek di [script.sh](android/scripts.sh).

set ip static komputer anda, atau jalankan [scripts dhcpserver](scripts/dhcpserver.sh)

### LEds control
``` bash
# on / off lampu koneksi merah
echo off > /proc/ledlight/netred/state
# on / off lampu koneksi hijau
echo on > /proc/ledlight/netgreen/state
# on / off lampu power merah
echo off > /proc/ledlight/powerred/state
# on / off lampu power hijau
echo on > /proc/ledlight/powergreen/state

```
### Services

``` bash
# list init service
getprop | grep svc.

# start stop
setprop svc.start service
setprop svc.stop  service

# powertl
sys.powerctl cmd

setprop ctl.stop media & setprop ctl.stop zygote & setprop ctl.stop bootanim


```
### Open Settings App

```
am start -n com.zte.iptvclient.android.settings/.activity.MainActivity
```

### Internet / DNS

After activating eth0, make sure `/system/bin/netaccess` is running.
That binary responsible for handle DNS settings.

### Interesting props
```
[net.change]: [net.zte.eth.netstate]
[net.checkmode]: [1]
[net.dns1]: [192.168.2.1]
[net.eth.nettype]: [1]
[net.hostname]: [android-e1106dc699d73a0c]
[net.zte.eth.netstate]: [CONNECTED]
[net.zte.netmode]: [ETHERNET]

setprop net.change net.zte.eth.netstate
setprop net.checkmode 1
setprop net.dns1 192.168.2.1
setprop net.eth.nettype 1
setprop net.hostname android-e1106dc699d73a0c
setprop net.zte.eth.netstate CONNECTED
setprop net.zte.netmode ETHERNET

```

### Which file setup wlan.driver.status=ok ?

still investigating

## TODOS

[x] Custom initramfs
[x] Debian Root on data or external sdcard
[x] Auto connect Wifi
[ ] SSH Server
[ ] remote GUI VNC
[ ] Terminal/display HDMI

Make multi console. if console /dev/ttyMT0 used by linux, android command will  not output anything?

## Known bugs

Android restart after about 6 minutes
```
while true; do sleep 1 && uptime; done &

up time: 00:06:03, idle time: 00:24:01, sleep time: 00:00:00
up time: 00:06:03, idle time: 00:23:05, sleep time: 00:00:00
up time: 00:06:02, idle time: 00:23:03, sleep time: 00:00:00
```
**if OK**
```
# before first 20 second
grep -A 10 -B 5 ztebw /proc/kmsg

<4>[   18.730619] (2)[933:Thread-31]monitor: received netlink message:ztebw ok
```

**kmesg**
```
....
<4>[  363.812166] (0)[0:swapper/0]kernel don't receive ztebw's message
<4>[  363.812206] (0)[0:swapper/0]monitor: received netlink message:timeout
<1>[  363.812297] (0)[102:swapper/0]_____137 > do_monitor [monitor timeout] set_fs_safe_mode
<4>[  363.812323] (0)[102:swapper/0]ALERT: normmode rootfs fs is destroyed !
...
```
** Caused by lib/libCrashRestore.so **

Delete that file does nothing, still reboot.

This apk shouldnot be deleted:
```
app/MainControl.apk
app/mcspbase.apk
```

**Known Behaviour**

- [MainControl McService](reversed/results/app/MainControl/smali/com/stbmc/maincontrol/McService.smali) listen props `sys.stbmc_boot` until `1`
- libCrashRestore watching `com.stbmc.maincontrol` process and should alive, then `setprop sys.ZTE_Services_OK 1`

- Who do `setprop sys.stbmc_boot 1` ?
- Who do `setprop sys.stb.state 1` ?

## Reffs

- [@quantvc - Running Debian Linux on Android device natively](https://medium.com/@quantvc/running-debian-on-android-device-natively-73545c9b0757)
- [lk boot](https://github.com/ariafan/lk_mtk/blob/master/bootable/bootloader/lk/app/mt_boot/mt_boot.c)

## Bookmarks

- https://github.com/neporood/device_RCA_RCT6213W87DK
- 

## Usefull info for debug

	[info.md](info.md)