#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf sed-4.9.tar.xz
cd  $LFS/sources/sed-4.9
./configure --prefix=/usr   \
            --host=$LFS_TGT
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/sed-4.9
