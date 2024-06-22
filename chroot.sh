#!/bin/bash
usage(){
    echo "$(basename $0) <dir_path>"
}

if [ -z $1 ];then
  usage
fi

TARGET="$1"

sudo mount --bind /dev $TARGET/dev/
sudo mount --bind /sys $TARGET/sys/
sudo mount --bind /proc $TARGET/proc/

sudo chroot $TARGET

sudo umount $TARGET/dev
sudo umount $TARGET/sys
sudo umount $TARGET/proc
#sudo umount $TARGET/boot #Only if you mounted it earlier
sudo umount $TARGET
