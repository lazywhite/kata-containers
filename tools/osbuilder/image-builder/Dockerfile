#
# Copyright (c) 2018 Intel Corporation
#
# SPDX-License-Identifier: Apache-2.0
ARG IMAGE_REGISTRY=registry.fedoraproject.org
FROM ${IMAGE_REGISTRY}/fedora:34

RUN sudo sed -e 's|^metalink=|#metalink=|g' \
         -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.tuna.tsinghua.edu.cn/fedora|g' \
         -i.bak \
         /etc/yum.repos.d/fedora.repo \
         /etc/yum.repos.d/fedora-modular.repo \
         /etc/yum.repos.d/fedora-updates.repo \
         /etc/yum.repos.d/fedora-updates-modular.repo

RUN dnf -v makecache
RUN dnf -v install -y \
        e2fsprogs \
        findutils \
        gcc \
        gdisk \
        parted \
        qemu-img \
        xfsprogs
RUN dnf clean all
