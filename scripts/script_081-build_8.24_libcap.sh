#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf libcap-2.67.tar.xz
cd /sources/libcap-2.67

sed -i '/install -m.*STA/d' libcap/Makefile

make prefix=/usr lib=lib

make test

make prefix=/usr lib=lib install

rm -rf /sources/libcap-2.67
