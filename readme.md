# Indihome ZTE ZXV10 B760H Debian with Original Kernel

	Android STB / TV Box Mediatek MT8127 RichMedia Indihome ZTE ZXV10 B760H


## Requirements

	- Linux Debian Based x86_64
	- GNU Make
	- SP Flash Tool

## HOW TO
### Using SP_Flash_Tool

- Download SP Flash tool [here](https://spflashtool.com/download/)
- extract to directory
- invoke make command with `make FLASH_TOOL=/extracted/sp_flash_tool/flash_tool.sh [target]`
- PowerOff before flasing, insert USB-to-USB cable after invoke command

### Build ramdisk
Build boot image with stock kernel and custom initram from [initram/rootfs](initram/rootfs).
``` bash
make initram
```
Output is `result/boot.img` and `result/initramfs.gzip.cpio`.

### Flash initram

``` bash
make flash_initram
# or
make flash_initram FLASH_TOOL=/your/path/flash_tool.sh
```
	Dont forget to call `make clean_initram` if you modify [rootfs](initram/rootfs) on initram.
	Dont forget to do full backup your device `make backup`

### Full backup your device

```
make backup
```

file stored on `backup` directory

## TODOS

	[X] Custom initramfs
	[ ] Debian Root on data or external sdcard
	[ ] Auto connect Wifi
	[ ] SSH Server
	[ ] remote GUI VNC
	[ ] Terminal/display HDMI

## Reffs

- [@quantvc - Running Debian Linux on Android device natively](https://medium.com/@quantvc/running-debian-on-android-device-natively-73545c9b0757)

## Original Partitions

 253        0     524288 zram0
 179        0    3795968 mmcblk0
 179        1          1 mmcblk0p1
 179        2      10240 mmcblk0p2
 179        3      10240 mmcblk0p3
 179        4       6144 mmcblk0p4
 179        5    1048576 mmcblk0p5
 179        6    1048576 mmcblk0p6
 179        7     771072 mmcblk0p7
 179        8     786432 mmcblk0p8
 179       64       4096 mmcblk0boot1
 179       32       4096 mmcblk0boot0
