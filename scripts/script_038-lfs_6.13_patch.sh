#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf patch-2.7.6.tar.xz
cd  $LFS/sources/patch-2.7.6
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/patch-2.7.6
