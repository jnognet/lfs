#!/bin/bash
set -o xtrace
cd $LFS/sources && find ~+ -name "*.gz" -o -name "*.bz2" -o -name "*.xz" | xargs -n 1 tar xvf
