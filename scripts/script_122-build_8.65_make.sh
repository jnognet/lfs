#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf make-4.4.tar.gz
cd /sources/make-4.4

sed -e '/ifdef SIGPIPE/,+2 d' \
    -e '/undef  FATAL_SIG/i FATAL_SIG (SIGPIPE);' \
    -i src/main.c

./configure --prefix=/usr

make

make check

make install

rm -rf /sources/make-4.4
