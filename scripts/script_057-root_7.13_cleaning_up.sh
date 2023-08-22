#!/bin/bash
set -o xtrace
rm -rf /usr/share/{info,man,doc}/*
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /tools
rm -rf /sources/*
rm -f /script_*-root_*.sh
exit
