#!/bin/bash
echo "
Disk /dev/sda: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x2d92eb89

Device     Boot   Start      End  Sectors  Size Id Type
/dev/sda1          2048   206847   204800  100M 83 Linux
/dev/sda2        206848  2303999  2097152    1G 82 Linux swap / Solaris
/dev/sda3       2304000 20971519 18667520  8.9G 83 Linux
"

read -t 10
sudo cfdisk /dev/sda
