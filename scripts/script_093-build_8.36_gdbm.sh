#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gdbm-1.23.tar.gz
cd /sources/gdbm-1.23

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make

make check

make install

rm -rf /sources/gdbm-1.23
