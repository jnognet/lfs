#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf elfutils-0.188.tar.bz2
cd /sources/elfutils-0.188

./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy

make

make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a

rm -rf /sources/elfutils-0.188
