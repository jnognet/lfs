#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf tar-1.34.tar.xz
cd  $LFS/sources/tar-1.34
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/tar-1.34
