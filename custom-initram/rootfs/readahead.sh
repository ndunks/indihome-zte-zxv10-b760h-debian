#!/system/bin/sh

  if [ -e /data/readahead.txt ]; then
    # start readahead operation
    /system/bin/readahead /data/readahead.txt
  else
    # collect readahead information
    SYSTEM=`/system/bin/cat /proc/self/maps | /system/bin/grep /system/bin | /system/bin/sed '2,$d' | /system/bin/sed 's/^.*://g' | /system/bin/sed 's/ .*$//g'`
    echo $SYSTEM > /sys/kernel/readahead
  fi
