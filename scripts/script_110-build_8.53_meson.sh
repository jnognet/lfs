#!/bin/bash
set -o xtrace
cd $LFS/sources
tar xvf meson-1.0.0.tar.gz
cd /sources/meson-1.0.0

pip3 wheel -w dist --no-build-isolation --no-deps $PWD

pip3 install --no-index --find-links dist meson
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson

rm -rf /sources/meson-1.0.0
