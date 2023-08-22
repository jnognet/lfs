#!/bin/bash
set -o xtrace
sudo cp script*-root_*.sh /mnt/lfs
sudo find ~+ /mnt/lfs -name "script*-root_*.sh" | xargs -n 1 sudo chown root.root
