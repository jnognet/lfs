#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf findutils-4.9.0.tar.xz
cd  $LFS/sources/findutils-4.9.0
./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/findutils-4.9.0
