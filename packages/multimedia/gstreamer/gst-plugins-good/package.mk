# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="gst-plugins-good"
PKG_VERSION="1.16.3"
PKG_SHA256="d3a23a3fe73de673f591b7655494990c9e8a0e22a3c70d6f1dbf50198b29f85f"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org/modules/gst-plugins-good.html"
PKG_URL="https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain gstreamer libsoup flac"
PKG_LONGDESC="GStreamer Good Plug-ins is a set of plug-ins that we consider to have good quality code"
PKG_BUILD_FLAGS="-gold"
PKG_TOOLCHAIN="autotools"

pre_configure_target() {
  PKG_CONFIGURE_OPTS_TARGET="--disable-nls \
                             --disable-examples \
                             --disable-tests"
}
