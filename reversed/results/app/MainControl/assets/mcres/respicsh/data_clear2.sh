#!/system/bin/sh
busybox rm -rf /data/app
busybox rm -rf /data/system
busybox find /data/data/  -type d | grep  '\.'|grep -v 'com.android.providers.settings' | xargs rm -rf
busybox rm -rf /data/dontpanic
#busybox rm -rf /data/misc
busybox mv /data/local/bootvideo /data/.
busybox mv /data/local/bootvideo2.mp4 /data/.
busybox rm -rf /data/local
busybox mkdir /data/local
busybox mv /data/bootvideo /data/local/.
busybox mv /data/bootvideo2.mp4 /data/local/.
busybox rm -rf /data/app-private
busybox rm -rf /data/app-lib
busybox rm -rf /data/property
busybox rm -rf /data/internal-device
busybox rm -rf /data/dalvik-cache
busybox rm -rf /data/resource-cache
busybox rm -rf /data/lost-found
busybox rm -rf /data/drm
busybox rm -rf /data/etc/PrivateSetting.ini
busybox rm -rf /data/etc/Stbmc.xml
busybox rm -rf /data/@btmtk

#add by yangzb  2015.09.12
#rm -rf /data/net_backup.ini
busybox rm -rf /sdcard/mtklog #按卫总的要求，恢复出厂的时候，删除mtklog
#end add by yangzb  2015.09.12

#DingQin 2015-10-19 Restore factory settings function transformation and new demand -- add begin
#按侯建文要求，恢复出厂的时候，需将登陆信息以及最后播放的频道信息也清除一下，这个属于用户使用记录
busybox rm -rf /data/logininfo.ini
busybox rm -rf /sdcard/last_channel.ini
busybox rm -rf /data/data/com.itv.android.iptv.tvclient/last_channel.ini
busybox rm -rf /data/last_channel.ini

busybox rm -rf /data/etc/LegalPackagesForDIMS.ini
#DingQin 2015-10-19 Restore factory settings function transformation and new demand -- add end

#删除iptv业务数据，该需求在哥伦比亚市场提出，作为通用需求。
busybox rm -rf /data/attribute.ini

#删除重庆联通的广告相关信息
busybox rm -rf /data/ad.ts
busybox rm -rf /data/adconf.xml
