#! /bin/sh
#
# install.sh
# Copyright (C) 2022 lazywhite <lazywhite@qq.com>
#
# Distributed under terms of the MIT license.
#


commit=$(git log --format=%h -1 HEAD)
date=$(date +%Y-%m-%d)
image="kata-containers-${date}-${commit}"
echo $image
sudo install -o root -g root -m 0640 -D kata-containers.img "/usr/share/kata-containers/${image}"
#(cd /usr/share/kata-containers && sudo ln -sf "$image" kata-containers.img)
