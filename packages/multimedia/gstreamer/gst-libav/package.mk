# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gst-libav"
PKG_VERSION="1.20.7"
PKG_SHA256="65e776e366f7f3549a9a829418817f464dcc5dc9845220c64a886683d8841b56"
PKG_LICENSE="LGPL"
PKG_SITE="https://gstreamer.freedesktop.org/modules/gst-libav.html"
PKG_URL="https://gstreamer.freedesktop.org/src/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain ffmpeg gstreamer gst-plugins-base"
PKG_LONGDESC="GStreamer Libav plugin for additional codec support via FFmpeg"

PKG_MESON_OPTS_TARGET="-Ddoc=disabled -Dtests=disabled"


