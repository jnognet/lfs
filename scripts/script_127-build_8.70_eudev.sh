#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf eudev-3.2.11.tar.gz
cd /sources/eudev-3.2.11

sed -i '/udevdir/a udev_dir=${udevdir}' src/udev/udev.pc.in

./configure --prefix=/usr           \
            --bindir=/usr/sbin      \
            --sysconfdir=/etc       \
            --enable-manpages       \
            --disable-static

make

mkdir -pv /usr/lib/udev/rules.d
mkdir -pv /etc/udev/rules.d



make install

tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install

udevadm hwdb --update

rm -rf /sources/eudev-3.2.11
