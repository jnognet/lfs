#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf grep-3.8.tar.xz
cd  $LFS/sources/grep-3.8
./configure --prefix=/usr   \
            --host=$LFS_TGT
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/grep-3.8
