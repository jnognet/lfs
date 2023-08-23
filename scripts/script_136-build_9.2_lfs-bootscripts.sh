#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf lfs-bootscripts-20230101.tar.xz
cd /sources/lfs-bootscripts-20230101

make install

rm -rf /sources/lfs-bootscripts-20230101
