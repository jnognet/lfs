#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf xz-5.4.1.tar.xz
cd /sources/xz-5.4.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.4.1
make

make install
rm -rf /sources/xz-5.4.1
