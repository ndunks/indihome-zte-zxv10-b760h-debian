# Some Informations

## cmdline
```
lk boot time[942]ms mode[0]
console=tty0 console=ttyMT0,115200n1 root=/dev/ram mac=90:D8:F3:F0:7E:66 lcm=1-cpt_clap070wp03xg_lvds fps=6500 vram=32505856 boardtype=1 boot_revision=V0016 safe_kernel=V734044 2017-03-04 bootprof.pl_t=1666 bootprof.lk_t=942 printk.disable_uart=1 boot_reason=0 androidboot.serialno=0123456789ABCDEF hdmi_res=2 cvbs_res=0 rdma1_src=3211646976
Uncompressing Linux... done, booting the kernel.
```

## Kernel 
```
Linux localhost 3.4.67 #1 SMP PREEMPT Wed Jun 7 18:15:22 HKT 2017 armv7l GNU/Linux
```

## HW CPU
```
Processor : ARMv7 Processor rev 3 (v7l)
processor : 0
BogoMIPS  : 1191.73

Features  : swp half thumb fastmult vfp edsp thumbee neon vfpv3 tls vfpv4 idiva idivt 
CPU implementer : 0x41
CPU architecture: 7
CPU variant : 0x0
CPU part  : 0xc07
CPU revision  : 3

Hardware  : MT8685
Revision  : 0000
Serial    : 0000000000000000
```

## DISK
```
root@ztemt85_bx_kk:/ # blkid
/dev/block/zram0: TYPE="swap" 
/dev/block/mmcblk0p2: UUID="57f8f4bc-abf4-655f-bf67-946fc0f9f25b" TYPE="ext4" 
/dev/block/mmcblk0p3: UUID="57f8f4bc-abf4-655f-bf67-946fc0f9f25b" TYPE="ext4" 
/dev/block/mmcblk0p5: UUID="57f8f4bc-abf4-655f-bf67-946fc0f9f25b" TYPE="ext4" 
/dev/block/mmcblk0p6: UUID="57f8f4bc-abf4-655f-bf67-946fc0f9f25b" TYPE="ext4" 
/dev/block/mmcblk0p7: UUID="57f8f4bc-abf4-655f-bf67-946fc0f9f25b" TYPE="ext4" 
/dev/block/mmcblk0p8: SEC_TYPE="msdos" LABEL="NO NAME" UUID="E88B-07DE" TYPE="vfat" 
root@ztemt85_bx_kk:/ # mount | grep mmc
/emmc@android /system ext4 ro,seclabel,noatime,noauto_da_alloc,commit=1,data=ordered 0 0
/emmc@cache /cache ext4 rw,seclabel,nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered 0 0
/emmc@usrdata /data ext4 rw,seclabel,nosuid,nodev,noatime,discard,noauto_da_alloc,errors=panic,data=ordered 0 0
/emmc@protect_f /protect_f ext4 rw,seclabel,nosuid,nodev,noatime,nodelalloc,noauto_da_alloc,commit=1,data=ordered 0 0
/emmc@protect_s /protect_s ext4 rw,seclabel,nosuid,nodev,noatime,nodelalloc,noauto_da_alloc,commit=1,data=ordered 0 0
```

## Partitions
```
 major minor  #blocks  name
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
```