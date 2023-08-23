#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf libpipeline-1.5.7.tar.gz
cd /sources/libpipeline-1.5.7

./configure --prefix=/usr

make

make install

rm -rf /sources/libpipeline-1.5.7
