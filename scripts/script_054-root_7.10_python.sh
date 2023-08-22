#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf Python-3.11.2.tar.xz
cd /sources/Python-3.11.2
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make
make install
rm -rf /sources/Python-3.11.2
