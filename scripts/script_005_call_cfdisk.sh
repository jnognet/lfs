#!/bin/bash
echo "Disk /dev/sda: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: ED062C00-D76C-3B46-AEA2-B15DFA0F3792

Device       Start      End  Sectors  Size Type
/dev/sda1     2048   196607   194560   95M Linux filesystem
/dev/sda2   196608  2293759  2097152    1G Linux swap
/dev/sda3  2293760 20971486 18677727  8.9G Linux filesystem"

read -t 10
sudo cfdisk /dev/sda
