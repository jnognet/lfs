#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf wheel-0.38.4.tar.gz
cd /sources/wheel-0.38.4

PYTHONPATH=src pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links=dist wheel

rm -rf /sources/wheel-0.38.4
