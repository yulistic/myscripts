#!/bin/bash
usage(){
    echo "$(basename $0) <dir_path>"
}

if [ -z $1 ];then
  usage
fi

TARGET="$1"

sudo chroot $TARGET
sudo mount --bind /proc $TARGET/proc/
sudo mount --bind /sys $TARGET/sys/
sudo mount --bind /dev $TARGET/dev/
