# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="cog"
PKG_VERSION="0.16.1"
PKG_SHA256="37c5f14123b8dcf077839f6c60f0d721d2a91bb37829e796f420126e6b0d38b5"
PKG_LICENSE="GPL"
PKG_SITE="https://wpewebkit.org"
PKG_URL="https://wpewebkit.org/releases/cog-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain wpewebkit wpebackend-fdo libxkbcommon"
PKG_LONGDESC="WPE launcher and webapp container"

post_install() {

  cp ${PKG_DIR}/scripts/cog-launcher ${INSTALL}/usr/bin
  chmod +x ${INSTALL}/usr/bin/cog-launcher

  enable_service cog.service
}
