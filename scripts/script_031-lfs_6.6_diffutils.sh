#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf diffutils-3.9.tar.xz
cd  $LFS/sources/diffutils-3.9
./configure --prefix=/usr --host=$LFS_TGT
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/diffutils-3.9
