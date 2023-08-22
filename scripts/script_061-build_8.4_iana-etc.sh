#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf iana-etc-20230202.tar.gz
cd /sources/iana-etc-20230202
cp services protocols /etc
rm -rf /sources/iana-etc-20230202
