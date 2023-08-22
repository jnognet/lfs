#!/bin/bash
rm -f $LFS/sources/*
rm -rf ftp.lfs-matrix.net/
wget -l 1 -r http://ftp.lfs-matrix.net/pub/lfs/lfs-packages/11.3/
mv ftp.lfs-matrix.net/pub/lfs/lfs-packages/11.3/*.bz2 $LFS/sources
mv ftp.lfs-matrix.net/pub/lfs/lfs-packages/11.3/*.gz $LFS/sources
mv ftp.lfs-matrix.net/pub/lfs/lfs-packages/11.3/*.xz $LFS/sources
mv ftp.lfs-matrix.net/pub/lfs/lfs-packages/11.3/*.patch $LFS/sources
