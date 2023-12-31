#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf sed-4.9.tar.xz
cd /sources/sed-4.9

./configure --prefix=/usr

make
make html

make install
install -d -m755           /usr/share/doc/sed-4.9
install -m644 doc/sed.html /usr/share/doc/sed-4.9

rm -rf /sources/sed-4.9
