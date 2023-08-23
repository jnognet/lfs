#!/bin/bash
set -o xtrace

cat > /etc/profile << "EOF"
# Begin /etc/profile

export LANG=en_US.utf8

# End /etc/profile
EOF
