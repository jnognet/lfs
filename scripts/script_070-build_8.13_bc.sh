#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf bc-6.2.4.tar.xz
cd /sources/bc-6.2.4
CC=gcc ./configure --prefix=/usr -G -O3 -r
make

make install
rm -rf /sources/bc-6.2.4
