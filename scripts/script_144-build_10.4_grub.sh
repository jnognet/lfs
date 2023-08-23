#!/bin/bash
set -o xtrace

grub-install /dev/sda

cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,3)

menuentry "GNU/Linux, Linux 6.1.11-lfs-11.3" {
        linux   /boot/vmlinuz-6.1.11-lfs-11.3 root=/dev/sda3 ro
}
EOF
