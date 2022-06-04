#! /bin/sh
#
# vnc-test.sh
# Copyright (C) 2022 lazywhite <lazywhite@qq.com>
#
# Distributed under terms of the MIT license.
#

bin=/usr/libexec/qemu-kvm
#bin=qemu-system-x86_64
$bin -m 1024 -drive file=test.img,if=virtio -cdrom /share/Download/CentOS-7-x86_64-Minimal-2003.iso -boot d -nographic -vnc :1000
