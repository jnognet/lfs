#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf mpfr-4.2.0.tar.xz
cd /sources/mpfr-4.2.0

sed -e 's/+01,234,567/+1,234,567 /' \
    -e 's/13.10Pd/13Pd/'            \
    -i tests/tsprintf.c

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.0

make
make html

make install
make install-html

rm -rf /sources/mpfr-4.2.0
