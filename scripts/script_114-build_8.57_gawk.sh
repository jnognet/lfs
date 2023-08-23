#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gawk-5.2.1.tar.xz
cd /sources/gawk-5.2.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make

make check

make LN='ln -f' install

mkdir -pv                                   /usr/share/doc/gawk-5.2.1
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.2.1

rm -rf /sources/gawk-5.2.1
