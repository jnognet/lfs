#!/bin/bash
set -o xtrace
sudo mountpoint -q $LFS/dev/shm && sudo umount $LFS/dev/shm
sudo umount $LFS/dev/pts
sudo umount $LFS/{sys,proc,run,dev}
cd $LFS && sudo tar -cJpf $HOME/lfs-temp-tools-11.3.tar.xz .
