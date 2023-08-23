#!/bin/bash
set -o xtrace

cd / && find ~+ -name "script_*-build_*.sh" | xargs -n 1 rm -f 
exit
