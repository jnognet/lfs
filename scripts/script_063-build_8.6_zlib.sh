#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf zlib-1.2.13.tar.xz
cd /sources/zlib-1.2.13
./configure --prefix=/usr
make
make check
make install
rm -fv /usr/lib/libz.a
rm -rf /sources/zlib-1.2.13
