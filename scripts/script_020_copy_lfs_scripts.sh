#!/bin/bash
set -o xtrace
sudo cp script*-lfs_*.sh /home/lfs
sudo find ~+ /home/lfs -name "*.sh" | xargs -n 1 sudo chown lfs.lfs
