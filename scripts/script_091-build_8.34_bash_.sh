#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf bash-5.2.15.tar.gz
cd /sources/bash-5.2.15

./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.2.15

make

make install

exec /usr/bin/bash --login

rm -rf /sources/bash-5.2.15
