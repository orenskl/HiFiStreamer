# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gst-libav"
PKG_VERSION="1.22.0"
PKG_SHA256="0e48407b4905227a260213dbda84cba3812f0530fc7a75b43829102ef82810f1"
PKG_LICENSE="LGPL"
PKG_SITE="https://gstreamer.freedesktop.org/modules/gst-libav.html"
PKG_URL="https://gstreamer.freedesktop.org/src/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain ffmpeg gstreamer"
PKG_LONGDESC="GStreamer Libav plugin for additional codec support via FFmpeg"

PKG_MESON_OPTS_TARGET="-Ddoc=disabled -Dtests=disabled"


