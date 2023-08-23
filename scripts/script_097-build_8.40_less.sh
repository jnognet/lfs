#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf less-608.tar.gz
cd /sources/less-608

./configure --prefix=/usr --sysconfdir=/etc

make 

make install

rm -rf /sources/less-608
