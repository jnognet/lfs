#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf libtool-2.4.7.tar.xz
cd /sources/libtool-2.4.7

./configure --prefix=/usr

make

make install

rm -fv /usr/lib/libltdl.a

rm -rf /sources/libtool-2.4.7
