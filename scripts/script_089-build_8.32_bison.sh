#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf bison-3.8.2.tar.xz
cd /sources/bison-3.8.2

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2

make



make install

rm -rf /sources/bison-3.8.2
