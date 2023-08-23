#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf grep-3.8.tar.xz
cd /sources/grep-3.8

sed -i "s/echo/#echo/" src/egrep.sh

./configure --prefix=/usr

make



make install

rm -rf /sources/grep-3.8
