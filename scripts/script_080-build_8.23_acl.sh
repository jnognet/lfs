#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf acl-2.3.1.tar.xz
cd /sources/acl-2.3.1

./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.1

make

make install

rm -rf /sources/acl-2.3.1
