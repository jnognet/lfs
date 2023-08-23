#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf Python-3.11.2.tar.xz
cd /sources/Python-3.11.2

./configure --prefix=/usr        \
            --enable-shared      \
            --with-system-expat  \
            --with-system-ffi    \
            --enable-optimizations

make

make install

cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

install -v -dm755 /usr/share/doc/python-3.11.2/html

tar --strip-components=1  \
    --no-same-owner       \
    --no-same-permissions \
    -C /usr/share/doc/python-3.11.2/html \
    -xvf ../python-3.11.2-docs-html.tar.bz2

rm -rf /sources/Python-3.11.2
