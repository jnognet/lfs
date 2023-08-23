#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf kmod-30.tar.xz
cd /sources/kmod-30

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --with-openssl         \
            --with-xz              \
            --with-zstd            \
            --with-zlib

make

make install

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /usr/sbin/$target
done

ln -sfv kmod /usr/bin/lsmod

rm -rf /sources/kmod-30
