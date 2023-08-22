#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf file-5.44.tar.gz
cd /sources/file-5.44
./configure --prefix=/usr
make
make check
make install
rm -rf /sources/file-5.44
