#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gawk-5.2.1.tar.xz
cd  $LFS/sources/gawk-5.2.1
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make
make DESTDIR=$LFS install
rm -rf $LFS/sources/gawk-5.2.1
