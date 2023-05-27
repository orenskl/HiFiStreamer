# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="cog"
PKG_VERSION="0.18.0"
PKG_SHA256="410bf70f9aa3812db72d75c25cefee421efa0391ab03dc3c37299dfaa388f4fd"
PKG_LICENSE="GPL"
PKG_SITE="https://wpewebkit.org"
PKG_URL="https://wpewebkit.org/releases/cog-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain wpewebkit wpebackend-fdo libxkbcommon weston"
PKG_LONGDESC="WPE launcher and webapp container"

post_install() {

  cp ${PKG_DIR}/scripts/cog-launcher ${INSTALL}/usr/bin
  chmod +x ${INSTALL}/usr/bin/cog-launcher

  enable_service cog.service
}
