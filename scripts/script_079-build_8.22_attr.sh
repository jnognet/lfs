#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf attr-2.5.1.tar.gz
cd /sources/attr-2.5.1

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.5.1

make



make install

rm -rf /sources/attr-2.5.1
