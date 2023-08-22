#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf m4-1.4.19.tar.xz
cd  $LFS/sources/m4-1.4.19
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/m4-1.4.19
