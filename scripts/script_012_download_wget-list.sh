#!/bin/bash
rm -f wget-list-sysv
wget https://www.linuxfromscratch.org/lfs/view/11.3/wget-list-sysv
wget --max-redirect=0 --input-file=wget-list-sysv --continue --directory-prefix=$LFS/sources
