#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf psmisc-23.6.tar.xz
cd /sources/psmisc-23.6

./configure --prefix=/usr

make

make install

rm -rf /sources/psmisc-23.6
