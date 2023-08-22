#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf flex-2.6.4.tar.gz
cd /sources/flex-2.6.4
./configure --prefix=/usr \
            --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static
make
make check
make install
ln -sv flex /usr/bin/lex
rm -rf /sources/flex-2.6.4
