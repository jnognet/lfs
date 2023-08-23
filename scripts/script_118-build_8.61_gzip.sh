#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gzip-1.12.tar.xz
cd /sources/gzip-1.12

./configure --prefix=/usr

make

make install

rm -rf /sources/gzip-1.12
