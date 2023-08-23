#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf diffutils-3.9.tar.xz
cd /sources/diffutils-3.9

./configure --prefix=/usr

make

make install

rm -rf /sources/diffutils-3.9
