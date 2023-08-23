#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf texinfo-7.0.2.tar.xz
cd /sources/texinfo-7.0.2

./configure --prefix=/usr

make

make install

make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd

rm -rf /sources/texinfo-7.0.2
