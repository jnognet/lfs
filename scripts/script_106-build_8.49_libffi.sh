#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf libffi-3.4.4.tar.gz
cd /sources/libffi-3.4.4

./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native

make

make check

make install

rm -rf /sources/libffi-3.4.4
