#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf inetutils-2.4.tar.xz
cd /sources/inetutils-2.4

./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

make



make install

mv -v /usr/{,s}bin/ifconfig

rm -rf /sources/inetutils-2.4
