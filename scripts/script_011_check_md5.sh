#!/bin/bash
rm -f $LFS/sources/md5sums
cd $LFS/sources && wget https://www.linuxfromscratch.org/lfs/view/stable/md5sums
pushd $LFS/sources
  md5sum -c md5sums
popd
