#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf groff-1.22.4.tar.gz
cd /sources/groff-1.22.4

PAGE=A4 ./configure --prefix=/usr

make

make install

rm -rf /sources/groff-1.22.4
