#! /bin/sh
#
# build.sh
# Copyright (C) 2022 lazywhite <lazywhite@qq.com>
#
# Distributed under terms of the MIT license.
#

export ROOTFS_DIR=/root/kata-containers/tools/osbuilder/rootfs-builder/rootfs-focal

script -fec 'sudo -E USE_DOCKER=true ./image_builder.sh ${ROOTFS_DIR}'
