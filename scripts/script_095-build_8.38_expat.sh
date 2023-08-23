#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf expat-2.5.0.tar.xz
cd /sources/expat-2.5.0

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.5.0

make

make check

make install

install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.5.0

rm -rf /sources/expat-2.5.0
