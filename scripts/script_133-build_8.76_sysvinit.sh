#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf sysvinit-3.06.tar.xz
cd /sources/sysvinit-3.06

patch -Np1 -i ../sysvinit-3.06-consolidated-1.patch

make

make install

rm -rf /sources/sysvinit-3.06
