# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="shairmopd"
PKG_VERSION="0.0.1"
PKG_SHA256="16836373ee92bfd69543e81c908e766457c4a4887f0b87739ed5550b98e649f2"
PKG_LICENSE="MIT"
PKG_URL="https://github.com/orenskl/shairmopd/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 python-dbus-next tornado"
PKG_LONGDESC="A python deamon to sync and control Mopidy and Shairport-Sync."
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
  cp -P shairmopd ${INSTALL}/usr/bin/shairmopd
}

post_install() {
  enable_service shairmopd.service
}
