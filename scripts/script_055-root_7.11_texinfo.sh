#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf texinfo-7.0.2.tar.xz
cd /sources/texinfo-7.0.2
./configure --prefix=/usr
make
make install
rm -rf /sources/texinfo-7.0.2
