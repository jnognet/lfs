#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf binutils-2.40.tar.xz
cd $LFS/sources/binutils-2.40
mkdir -v build
cd       build
time { ../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror && make && make install; }
rm -rf $LFS/sources/binutils-2.40
