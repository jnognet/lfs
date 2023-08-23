#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf automake-1.16.5.tar.xz
cd /sources/automake-1.16.5

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.5

make

make install

rm -rf /sources/automake-1.16.5
