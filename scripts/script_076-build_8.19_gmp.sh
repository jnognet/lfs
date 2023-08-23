#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gmp-6.2.1.tar.xz
cd /sources/gmp-6.2.1

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.2.1

make
make html

make install
make install-html

rm -rf /sources/gmp-6.2.1
