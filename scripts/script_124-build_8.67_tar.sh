#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf tar-1.34.tar.xz
cd /sources/tar-1.34

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr

make



make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34

rm -rf /sources/tar-1.34
