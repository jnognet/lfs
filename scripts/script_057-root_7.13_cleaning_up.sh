#!/bin/bash
set -o xtrace
rm -rf /usr/share/{info,man,doc}/*
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /tools
rm -f /script_*-root_*.sh
