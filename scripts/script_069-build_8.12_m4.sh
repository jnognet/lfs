#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf m4-1.4.19.tar.xz
cd /sources/m4-1.4.19
./configure --prefix=/usr
make

make install
rm -rf /sources/m4-1.4.19
