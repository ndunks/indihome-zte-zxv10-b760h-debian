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

**kmesg**
```
<4>[  363.812166] (0)[0:swapper/0]kernel don't receive ztebw's message
<4>[  363.812206] (0)[0:swapper/0]monitor: received netlink message:timeout
<1>[  363.812297] (0)[102:swapper/0]_____137 > do_monitor [monitor timeout] set_fs_safe_mode
<4>[  363.812323] (0)[102:swapper/0]ALERT: normmode rootfs fs is destroyed !
<4>[  363.812371] (0)[102:swapper/0][set_fs_safe_mode  644]
<4>[  363.812412] (0)[102:swapper/0][set_fs_safe_mode  652]
<4>[  363.812431] (0)[102:swapper/0][set_fs_safe_mode  655]
<4>[  363.812450] (0)[102:swapper/0][FfsInit  101]
<4>[  363.812467] (0)[102:swapper/0][FfsInit  108]
<4>[  363.812484] (0)[102:swapper/0][FfsInit  111]
<4>[  363.812501] (0)[102:swapper/0][FfsInit  133]
<4>[  363.812595] (0)[102:swapper/0][FfsInit  140]
<4>[  363.812635] (0)[102:swapper/0][FfsInit  157]
<4>[  363.812662] (0)[102:swapper/0][FfsInit  165]
<4>[  363.812686] (0)[102:swapper/0][FfsLocateMarkBlock  986]
<4>[  363.812705] (0)[102:swapper/0][FfsInit  179]
<4>[  363.812732] (0)[102:swapper/0][FfsInit  186]
<4>[  363.812755] (0)[102:swapper/0][FfsInit  189]
<4>[  363.812774] (0)[102:swapper/0][FfsInit  192]
<4>[  363.812791] (0)[102:swapper/0]init ffs failed!
<4>[  363.812819] (0)[102:swapper/0]ALERT:File system panic, system will enter safemode...
<7>[  363.812934] (0)[102:swapper/0][MUSB]musb_shutdown 1239: shut down
<4>[  363.812960] (0)[102:swapper/0]mt_usb_disable, 1, 1
<7>[  363.812987] (0)[102:swapper/0]usb_enable_clock enable(1), res=0 out
<7>[  363.813061] (0)[102:swapper/0]usb_enable_clock enable(0), res=0 out
<7>[  363.813085] (0)[102:swapper/0]usb_enable_clock enable(1), res=0 out
<7>[  363.813160] (0)[102:swapper/0]usb_enable_clock enable(0), res=0 out
<4>[  363.813986] (0)[102:swapper/0]usb_phy_savecurrent_internal: USBPHY_READ8(0x05) = 0x44 
<4>[  363.814011] (0)[102:swapper/0]usb_phy_savecurrent_internal: USBPHY_READ8(0x07) = 0x44 
<7>[  363.814041] (0)[102:swapper/0]usb_enable_clock enable(0), res=0 out
<4>[  363.814060] (0)[102:swapper/0]usb save current success
<7>[  363.814081] (0)[102:swapper/0][MUSB]mt_usb_disable 217: disable UPLL before disconnect
<3>[  363.814106] (0)[102:swapper/0]musb_shutdown, line 1252. 
<7>[  363.814132] (0)[102:swapper/0][MUSB]mt_usb_set_vbus 62: mt65xx_usb20_vbus++,is_on=0
<7>[  363.814160] (0)[102:swapper/0]usb_enable_clock enable(1), res=0 out
<7>[  363.814187] (0)[102:swapper/0][MUSB]musb_writeb 137: [MUSB]:access musb_writeb function when usb clock is off 0x60
<7>[  363.814215] (0)[102:swapper/0]usb_enable_clock enable(0), res=0 out
<4>[  363.815075] (0)[102:swapper/0]******** MT auxadc driver shutdown!! ********
<4>[  363.815108] (0)[102:swapper/0][LED]mt65xx_leds_shutdown
<4>[  363.815126] (0)[102:swapper/0][LED]mt65xx_leds_shutdown: turn off backlight
<4>[  363.815150] (0)[102:swapper/0][LED]PMIC#3:0
<4>[  363.815170] (0)[102:swapper/0][LED]PMIC#2:0
<4>[  363.815190] (0)[102:swapper/0][LED]PMIC#1:0
<4>[  363.815207] (0)[102:swapper/0][LED]backlight control through BLS!!1
<4>[  363.815230] (0)[102:swapper/0][BLS]disp_bls_set_backlight: 0, gBLSPowerOn = 0
<4>[  363.815252] (0)[102:swapper/0][BLS]after mapping, mapped_level: 0
<4>[  363.815272] (0)[102:swapper/0][BLS]after SET, PWM_DUTY: 0
<4>[  363.815310] (0)[102:swapper/0][LED]#6:0
<4>[  363.815333] (0)[102:swapper/0]mt65xx_leds_set_cust: set brightness, name:lcd-backlight, mode:5, level:0

```

## Reffs

- [@quantvc - Running Debian Linux on Android device natively](https://medium.com/@quantvc/running-debian-on-android-device-natively-73545c9b0757)
- [lk boot](https://github.com/ariafan/lk_mtk/blob/master/bootable/bootloader/lk/app/mt_boot/mt_boot.c)
## Usefull info for debug

	[info.md](info.md)