#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf pkg-config-0.29.2.tar.gz
cd /sources/pkg-config-0.29.2

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2

make

make install

rm -rf /sources/pkg-config-0.29.2
