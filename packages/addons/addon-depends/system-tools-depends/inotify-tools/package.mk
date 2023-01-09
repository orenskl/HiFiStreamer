# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="inotify-tools"
PKG_VERSION="3.22.1.0"
PKG_SHA256="da81010756866966e6dfb1521c2be2f0946e7626fa29122e1672dc654fc89ff3"
PKG_LICENSE="GPLv2"
PKG_SITE="http://wiki.github.com/inotify-tools/inotify-tools/"
PKG_URL="https://github.com/inotify-tools/inotify-tools/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A C library and a set of command-line programs for Linux providing a simple interface to inotify."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared --disable-doxygen"

pre_configure_target() {
  CFLAGS+=" -Wno-error=misleading-indentation -Wno-error=unused-parameter"
}
