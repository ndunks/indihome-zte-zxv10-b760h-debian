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

partno:    start_sect   nr_sects  partition_name
emmc_p1: 00000400 00000002 "ebr1"
emmc_p2: 00006800 00005000 "protect_f"
emmc_p3: 0000b800 00005000 "protect_s"
emmc_p4: 00020c00 00003000 "sec_ro"
emmc_p5: 00030c00 00200000 "android"
emmc_p6: 00230c00 00200000 "cache"
emmc_p7: 00430c00 00178800 "usrdata"
emmc_p8: 005a9400 00180000 "fat"
```

## Process
```
PID   USER     TIME  COMMAND
    1 0         0:04 /init.android
    2 0         0:00 [kthreadd]
    3 0         0:00 [ksoftirqd/0]
    5 0         0:00 [kworker/u:0]
    6 0         0:00 [migration/0]
   16 0         0:00 [khelper]
   17 0         0:00 [fs_sync]
   18 0         0:00 [suspend]
   19 0         0:00 [GCPU]
   20 0         0:00 [update_tz_count]
   21 0         0:00 [entropy_thread]
   22 0         0:00 [sync_supers]
   23 0         0:00 [bdi-default]
   24 0         0:00 [kblockd]
   25 0         0:00 [khubd]
   27 0         0:00 [cfg80211]
   28 0         0:00 [rpciod]
   30 0         0:00 [emi_mpu]
   31 0         0:00 [kswapd0]
   32 0         0:00 [fsnotify_mark]
   33 0         0:00 [nfsiod]
   34 0         0:00 [cifsiod]
   35 0         0:00 [fuse_log]
   36 0         0:00 [crypto]
   51 0         0:00 [kworker/u:1]
   58 0         0:00 [uether]
   59 0         0:00 [binder]
   60 0         0:00 [hang_detect]
   61 0         0:00 [ion_mm_heap]
   62 0         0:00 [btif_rxd]
   63 0         0:00 [conn-md-thread]
   64 0         0:00 [mtk_vibrator]
   65 0         0:00 [trace mon]
   66 0         0:00 [ovl_eng_wq]
   67 0         0:00 [ovl_eng_wq]
   68 0         0:00 [ovl_eng_wq]
   69 0         0:00 [ovl_eng_wq]
   70 0         0:00 [ovl_eng_wq]
   71 0         0:00 [ovl_engine_kthr]
   72 0         0:00 [rdma0_update_kt]
   73 0         0:01 [hdmi_timer_kthr]
   74 0         0:00 [hdmi_irq_kthrea]
   75 0         0:00 [cec_timer_kthre]
   76 0         0:00 [mtk_ir_inp_thre]
   77 0         0:00 [mtk_ir_dev_thre]
   78 0         0:00 [mtk_ir_netlink_]
   80 0         0:00 [disp_config_upd]
   81 0         0:00 [disp_captureovl]
   82 0         0:00 [disp_capturefb_]
   83 0         0:00 [disp_config_upd]
   84 0         0:01 [mmcqd/0]
   85 0         0:00 [mmcqd/0boot0]
   86 0         0:00 [mmcqd/0boot1]
   87 0         0:02 [kworker/0:1]
   88 0         0:00 [mtkfb_ovls_wq]
   90 0         0:01 [tve_rdma_config]
   91 0         0:00 [tve_rdma_update]
   92 0         0:01 [tve_filter_kthr]
   93 0         0:00 [accdet]
   94 0         0:00 [keyEvent_send]
   95 0         0:00 [accdet_eint]
   96 0         0:00 [accdet_disable]
   97 0         0:00 [usb_hcd_0]
   98 0         0:00 [usb_hcd_1]
   99 0         0:00 [deferwq]
  100 0         0:00 [f_mtp]
  101 0         0:00 [file-storage]
  102 0         0:00 [swapper/0]
  103 0         0:00 [wdtk-0]
  104 0         0:00 [wdtk-1]
  105 0         0:00 [wdtk-2]
  106 0         0:00 [wdtk-3]
  107 0         0:00 [cvbs_timer_kthr]
  121 0         0:00 /sbin/ueventd
  124 0         0:00 [jbd2/mmcblk0p5-]
  125 0         0:00 [ext4-dio-unwrit]
  130 0         0:00 [jbd2/mmcblk0p6-]
  131 0         0:00 [ext4-dio-unwrit]
  141 0         0:00 [jbd2/mmcblk0p7-]
  142 0         0:00 [ext4-dio-unwrit]
  147 0         0:00 [jbd2/mmcblk0p2-]
  148 0         0:00 [ext4-dio-unwrit]
  151 0         0:00 [jbd2/mmcblk0p3-]
  152 0         0:00 [ext4-dio-unwrit]
  156 1000      0:00 /system/bin/drvbd
  157 0         0:00 /sbin/healthd
  158 1000      0:00 /system/bin/servicemanager
  159 0         0:00 /system/bin/vold
  160 1000      0:00 /system/bin/logwrapper /system/bin/6620_launcher -p /system/etc/firmware/
  161 0         0:00 /system/bin/debuggerd
  162 2000      0:00 /system/bin/mobile_log_d
  163 0         0:01 /system/bin/netd
  164 1000      0:00 /system/bin/6620_launcher -p /system/etc/firmware/
  165 2000      0:00 /system/bin/netdiag
  168 1000      0:01 /system/bin/surfaceflinger
  170 0         0:04 zygote /bin/app_process -Xzygote /system/bin --zygote --start-system-server
  171 0         0:00 /system/bin/pppoe-dial
  172 1019      0:00 /system/bin/drmserver
  173 1013      0:00 /system/bin/mediaserver
  175 1000      0:00 /system/bin/matv
  176 1012      0:00 /system/bin/installd
  178 1017      0:00 /system/bin/keystore /data/misc/keystore
  179 1013      0:00 /system/bin/MtkCodecService
  192 0         0:00 daemonsu:mount:master
  193 0         0:00 [mtk_stp_psm]
  194 0         0:00 [mtk_stp_btm]
  196 0         0:00 [mtk_wmtd]
  443 0         0:00 daemonsu:master      
  531 0         0:00 /system/bin/sh
  533 9997      0:00 /system/bin/em_svr
  613 0         0:00 [flush-179:0]
  632 1000      0:18 system_server
  715 10026     0:00 {ndroid.systemui} com.android.systemui
  768 1023      0:00 /system/bin/sdcard -u 1023 -g 1023 -d /mnt/media_rw/sdcard0 /storage/sdcard0
  800 10041     0:00 {putmethod.latin} com.android.inputmethod.latin
  820 10008     0:01 {r.boost:service} com.cleanmaster.boost:service
  833 1000      0:02 {.netaccessagent} com.ztestb.netaccessagent
  844 1001      0:00 {m.android.phone} com.android.phone
  857 1000      0:03 {d.iptv.tvclient} com.itv.android.iptv.tvclient
  874 1000      0:04 {ztestb.basecomp} com.ztestb.basecomp
  887 1000      0:00 STB.OSD
  902 1002      0:00 {iatek.bluetooth} com.mediatek.bluetooth
  916 1000      0:00 {testb.javawatch} com.ztestb.javawatch
  930 1000      0:00 com.ztestb.sqm
  945 1000      0:01 {.zte.netmanager} com.zte.netmanager
  956 1000      0:00 {stb.dlnamanager} com.ztestb.dlnamanager
  971 1000      0:00 {stb.nmassistant} com.ztestb.nmassistant
  986 10007     0:01 {y.remoteservice} com.cetusplay.remoteservice
  999 1000      0:01 com.zte.Monitor
 1011 1000      0:00 {m.zte.zteplayer} com.zte.zteplayer
 1025 1000      0:00 {eplayer.service} zteplayer.service
 1038 1000      0:00 {om.android.dlna} com.android.dlna
 1051 1000      0:02 {bmc.maincontrol} com.stbmc.maincontrol
 1066 1000      0:00 system:ui
 1184 1000      0:00 /data/data/com.stbmc.maincontrol/files/mcres/bin/autotest
 1223 10020     0:00 {d.process.acore} android.process.acore
 1308 10021     0:00 {id.defcontainer} com.android.defcontainer
 1337 10012     0:00 {browser_service} com.ksmobile.cb:kbrowser_service
 1368 0         0:00 [flush-0:26]
 1369 10022     0:01 {d.process.media} android.process.media
 1436 10012     0:00 /data/data/com.ksmobile.cb/files/kwatchdog https://www.surveymonkey.com/r/cmbuninstall-en True
 1454 10024     0:01 {o:Apps2SDTasker} in.co.pricealert.apps2sd.pro:Apps2SDTasker
 1472 10025     0:00 io.vov.vitamio
 1528 10020     0:00 {ndroid.contacts} com.android.contacts
 1555 0         0:00 daemonsu:mount:0     
 1559 10040     0:03 iflix.play
 1670 10010     0:00 {e.process.gapps} com.google.process.gapps
 1697 1000      0:00 {m.mcsp.MSCAgent} com.mcsp.MSCAgent
 1745 1000      0:00 {m.ztestb.stbcfg} com.ztestb.stbcfg
 1888 0         0:00 daemonsu:10007       
 1898 10007     0:00 su
 1901 0         0:00 app_process /system/bin com.android.commands.input.Input
 1928 10009     0:00 {.apps.wallpaper} com.google.android.apps.wallpaper
 1960 10016     0:00 com.nobi21
 2011 10028     0:00 org.adaway
 2029 10029     0:01 {.speedanalytics} org.speedspot.speedanalytics
 2081 10029     0:00 {sensethreesixty} org.speedspot.speedanalytics:sensethreesixty
 2115 10034     0:00 {roid.youtube.tv} com.google.android.youtube.tv
 2185 1000      0:03 {te.mes.floatWin} com.zte.mes.floatWin
 2198 1000      0:00 {.thermalmanager} com.mediatek.thermalmanager
 2211 1000      0:00 {ndroid.settings} com.zte.iptvclient.android.settings
 2225 1000      0:00 com.zte.helper
 2241 10012     0:01 com.ksmobile.cb
 2308 10000     0:00 {viders.calendar} com.android.providers.calendar
 2402 0         0:00 [kworker/0:2]
 2452 10002     0:00 {tor.filemanager} com.alphainventor.filemanager
 2724 0         0:00 busybox ps
```
