#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf patch-2.7.6.tar.xz
cd /sources/patch-2.7.6

./configure --prefix=/usr

make

make install

rm -rf /sources/patch-2.7.6
