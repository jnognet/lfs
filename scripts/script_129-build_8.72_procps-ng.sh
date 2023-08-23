#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf procps-ng-4.0.2.tar.xz
cd /sources/procps-ng-4.0.2

./configure --prefix=/usr                           \
            --docdir=/usr/share/doc/procps-ng-4.0.2 \
            --disable-static                        \
            --disable-kill

make

make check

make install

rm -rf /sources/procps-ng-4.0.2
