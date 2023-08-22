#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf xz-5.4.1.tar.xz
cd  $LFS/sources/xz-5.4.1
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.4.1
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/xz-5.4.1
