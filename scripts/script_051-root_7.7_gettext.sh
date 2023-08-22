#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf gettext-0.21.1.tar.xz
cd /sources/gettext-0.21.1
./configure --disable-shared
make
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
rm -rf /sources/gettext-0.21.1
