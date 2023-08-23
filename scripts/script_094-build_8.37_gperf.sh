#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gperf-3.1.tar.gz
cd /sources/gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1

make

make install

rm -rf /sources/gperf-3.1
