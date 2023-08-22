#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf man-pages-6.03.tar.xz
cd /sources/man-pages-6.03
make prefix=/usr install
rm -rf /sources/man-pages-6.03
