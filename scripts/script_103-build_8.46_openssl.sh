#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf openssl-3.0.8.tar.gz
cd /sources/openssl-3.0.8

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make

make test

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.0.8

cp -vfr doc/* /usr/share/doc/openssl-3.0.8

rm -rf /sources/openssl-3.0.8
