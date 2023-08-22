#!/bin/bash
set -o xtrace
sudo cp script*-build_*.sh /mnt/lfs
sudo find ~+ /mnt/lfs -name "script*-build_*.sh" | xargs -n 1 sudo chown root.root
