#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf kbd-2.5.1.tar.xz
cd /sources/kbd-2.5.1

patch -Np1 -i ../kbd-2.5.1-backspace-1.patch

sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

./configure --prefix=/usr --disable-vlock

make

make install

mkdir -pv           /usr/share/doc/kbd-2.5.1
cp -R -v docs/doc/* /usr/share/doc/kbd-2.5.1

rm -rf /sources/kbd-2.5.1
