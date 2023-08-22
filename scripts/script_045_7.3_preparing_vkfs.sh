#!/bin/bash
set -o xtrace
sudo mkdir -pv $LFS/{dev,proc,sys,run}
sudo mount -v --bind /dev $LFS/dev
sudo mount -v --bind /dev/pts $LFS/dev/pts
sudo mount -vt proc proc $LFS/proc
sudo mount -vt sysfs sysfs $LFS/sys
sudo mount -vt tmpfs tmpfs $LFS/run
if [ -h $LFS/dev/shm ]; then
  sudo mkdir -pv $LFS/$(readlink $LFS/dev/shm)
else
  sudo mount -t tmpfs -o nosuid,nodev tmpfs $LFS/dev/shm
fi
