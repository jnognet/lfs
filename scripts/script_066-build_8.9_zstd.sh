#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf zstd-1.5.4.tar.gz 
cd /sources/zstd-1.5.4
make prefix=/usr
make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a
rm -rf /sources/zstd-1.5.4
