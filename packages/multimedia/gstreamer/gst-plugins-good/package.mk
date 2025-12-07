# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="gst-plugins-good"
PKG_VERSION="1.20.7"
PKG_SHA256="599f093cc833a1e346939ab6e78a3f8046855b6da13520aae80dd385434f4ab2"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org/modules/gst-plugins-good.html"
PKG_URL="https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain gstreamer gst-plugins-base libsoup flac"
PKG_LONGDESC="GStreamer Good Plug-ins is a set of plug-ins that we consider to have good quality code"
PKG_BUILD_FLAGS="-gold"

pre_configure_target() {
  PKG_MESON_OPTS_TARGET="-Dgtk3=disabled \
                         -Djack=disabled \
                         -Djpeg=disabled \
                         -Dlibcaca=disabled \
                         -Dosxaudio=disabled \
                         -Dosxvideo=disabled \
                         -Dpng=disabled \
                         -Dpulse=disabled \
                         -Dshout2=disabled \
                         -Dspeex=disabled \
                         -Dvpx=disabled \
                         -Dwaveform=disabled \
                         -Ddirectsound=disabled \
                         -Ddv=disabled \
                         -Ddv1394=disabled \
                         -Dqt5=disabled \
                         -Dximagesrc=disabled \
                         -Dximagesrc-xshm=disabled \
                         -Dximagesrc-xfixes=disabled \
                         -Dximagesrc-xdamage=disabled \
                         -Dv4l2=disabled \
                         -Dv4l2-probe=false \
                         -Dv4l2-libv4l2=disabled \
                         -Dv4l2-gudev=disabled \
                         -Dexamples=disabled \
                         -Dtests=disabled \
                         -Dnls=disabled \
                         -Dorc=disabled \
                         -Dgobject-cast-checks=disabled \
                         -Dglib-asserts=disabled \
                         -Dglib-checks=disabled \
                         -Ddoc=disabled"
}