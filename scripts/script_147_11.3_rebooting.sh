#!/bin/bash
set -o xtrace

sudo umount -v $LFS/dev/pts
sudo mountpoint -q $LFS/dev/shm && sudo umount $LFS/dev/shm
sudo umount -v $LFS/dev
sudo umount -v $LFS/run
sudo umount -v $LFS/proc
sudo umount -v $LFS/sys

sudo umount -v $LFS/boot
sudo umount -v $LFS
