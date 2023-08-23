#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf findutils-4.9.0.tar.xz
cd /sources/findutils-4.9.0

case $(uname -m) in
    i?86)   TIME_T_32_BIT_OK=yes ./configure --prefix=/usr --localstatedir=/var/lib/locate ;;
    x86_64) ./configure --prefix=/usr --localstatedir=/var/lib/locate ;;
esac

make

chown -Rv tester .
su tester -c "PATH=$PATH make check"

make install

rm -rf /sources/findutils-4.9.0
