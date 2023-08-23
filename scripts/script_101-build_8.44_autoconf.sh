#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf autoconf-2.71.tar.xz
cd /sources/autoconf-2.71

sed -e 's/SECONDS|/&SHLVL|/'               \
    -e '/BASH_ARGV=/a\        /^SHLVL=/ d' \
    -i.orig tests/local.at

./configure --prefix=/usr

make

make check

make install

rm -rf /sources/autoconf-2.71
