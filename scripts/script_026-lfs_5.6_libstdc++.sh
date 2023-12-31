#!/bin/bash
set -o xtrace
rm -rf $LFS/sources/gcc-12.2.0
cd  $LFS/sources
tar xvf gcc-12.2.0.tar.xz
cd $LFS/sources/gcc-12.2.0
mkdir -v build
cd       build
../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --build=$(../config.guess)      \
    --prefix=/usr                   \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/12.2.0
make
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{stdc++,stdc++fs,supc++}.la
rm -rf $LFS/sources/gcc-12.2.0
