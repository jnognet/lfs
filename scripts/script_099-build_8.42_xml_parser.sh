#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf XML-Parser-2.46.tar.gz
cd /sources/XML-Parser-2.46

perl Makefile.PL

make

make install

rm -rf /sources/XML-Parser-2.46
