#!/bin/sh

VENDOR=rockchip
DEVICE=surftab-ventos

BASE=./prebuilt/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | cut -f1 -d '#' | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

# ./setup-makefiles.sh
