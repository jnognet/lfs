#!/bin/bash
set -o xtrace

cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="11.3"
DISTRIB_CODENAME="<your name here>"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF

cat > /etc/os-release << "EOF"
NAME="Linux From Scratch"
VERSION="11.3"
ID=lfs
PRETTY_NAME="Linux From Scratch 11.3"
VERSION_CODENAME="<your name here>"
EOF
