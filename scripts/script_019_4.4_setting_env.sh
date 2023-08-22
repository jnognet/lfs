#!/bin/bash
sudo bash -c "cat > /home/lfs/.bash_profile << \"EOF\"
exec env -i HOME=\$HOME TERM=\$TERM PS1='\u:\w\$ ' /bin/bash
EOF"

sudo bash -c "cat > /home/lfs/.bashrc << \"EOF\"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS/tools/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
export MAKEFLAGS='-j4'
EOF"

sudo chown lfs:lfs /home/lfs/.bash_profile
sudo chown lfs:lfs /home/lfs/.bashrc
sudo chmod 600     /home/lfs/.bash_profile
sudo chmod 600     /home/lfs/.bashrc
