#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf mpc-1.3.1.tar.gz
cd /sources/mpc-1.3.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1

make
make html

make install
make install-html

rm -rf /sources/mpc-1.3.1
