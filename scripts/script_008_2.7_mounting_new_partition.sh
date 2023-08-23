#!/bin/bash
echo $LFS
sudo mkdir -pv $LFS
sudo mount -v -t ext4 /dev/sda3 $LFS
sudo mkdir -pv $LFS/boot
sudo mount -v -t ext4 /dev/sda1 $LFS/boot
sudo /sbin/swapon -v /dev/sda2
