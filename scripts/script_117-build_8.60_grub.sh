#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf grub-2.06.tar.xz
cd /sources/grub-2.06

patch -Np1 -i ../grub-2.06-upstream_fixes-1.patch

./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make

make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

rm -rf /sources/grub-2.06
