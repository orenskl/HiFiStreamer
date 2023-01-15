# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gstreamer"
PKG_VERSION="1.16.3"
PKG_SHA256="692f037968e454e508b0f71d9674e2e26c78475021407fcf8193b1c7e59543c7"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/gstreamer/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain gi glib glib:host"
PKG_LONGDESC="GStreamer open-source multimedia framework core library"
PKG_TOOLCHAIN="autotools"

pre_configure_target() {
  PKG_CONFIGURE_OPTS_TARGET="--disable-nls \
                             --disable-check \
                             --disable-examples \
                             --disable-tests \
                             --disable-failing-tests \
                             --disable-benchmarks"
}
