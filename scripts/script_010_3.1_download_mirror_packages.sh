#!/bin/bash
rm -f $LFS/sources/*
rm -rf lfs.gnlug.org
wget -l 1 -r https://lfs.gnlug.org/pub/lfs/lfs-packages/11.3/
mv lfs.gnlug.org/pub/lfs/lfs-packages/11.3/*.bz2 $LFS/sources
mv lfs.gnlug.org/pub/lfs/lfs-packages/11.3/*.gz $LFS/sources
mv lfs.gnlug.org/pub/lfs/lfs-packages/11.3/*.xz $LFS/sources
mv lfs.gnlug.org/pub/lfs/lfs-packages/11.3/*.patch $LFS/sources
