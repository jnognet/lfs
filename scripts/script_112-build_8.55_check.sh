#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf check-0.15.2.tar.gz
cd /sources/check-0.15.2

./configure --prefix=/usr --disable-static

make



make docdir=/usr/share/doc/check-0.15.2 install

rm -rf /sources/check-0.15.2
