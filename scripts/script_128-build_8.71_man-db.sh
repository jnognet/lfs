#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf man-db-2.11.2.tar.xz
cd /sources/man-db-2.11.2

./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.11.2 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap             \
            --with-systemdtmpfilesdir=            \
            --with-systemdsystemunitdir=

make



make install

rm -rf /sources/man-db-2.11.2
