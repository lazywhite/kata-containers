#! /bin/sh
#
# a.sh
# Copyright (C) 2022 lazywhite <lazywhite@qq.com>
#
# Distributed under terms of the MIT license.
#

#export ROOTFS_DIR=`pwd`/rootfs
#rm -rf ${ROOTFS_DIR}
script -fec 'sudo -E GOPATH=$GOPATH USE_DOCKER=true ./rootfs.sh ubuntu'
