#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gettext-0.21.1.tar.xz
cd /sources/gettext-0.21.1

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21.1
make



make install

chmod -v 0755 /usr/lib/preloadable_libintl.so

rm -rf /sources/gettext-0.21.1
