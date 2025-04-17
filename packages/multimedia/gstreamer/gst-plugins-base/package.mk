# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gst-plugins-base"
PKG_VERSION="1.22.0"
PKG_SHA256="f53672294f3985d56355c8b1df8f6b49c8c8721106563e19f53be3507ff2229d"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org/modules/gst-plugins-base.html"
PKG_URL="https://gstreamer.freedesktop.org/src/gst-plugins-base/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain gstreamer alsa-utils alsa-lib"
PKG_LONGDESC="Base GStreamer plugins and helper libraries"
PKG_BUILD_FLAGS="-gold"

PKG_MESON_OPTS_TARGET="-Dgl=disabled \
                       -Dadder=disabled \
                       -Dapp=disabled \
                       -Daudiomixer=disabled \
                       -Daudiorate=disabled \
                       -Daudioresample=disabled \
                       -Daudiotestsrc=disabled \
                       -Dcompositor=disabled \
                       -Dencoding=disabled \
                       -Dgio=disabled \
                       -Dgio-typefinder=disabled \
                       -Doverlaycomposition=disabled \
                       -Dpbtypes=disabled \
                       -Drawparse=enabled \
                       -Dsubparse=enabled \
                       -Dtcp=disabled \
                       -Dvideoconvertscale=disabled \
                       -Dvideorate=disabled \
                       -Dvideotestsrc=disabled \
                       -Dcdparanoia=disabled \
                       -Dlibvisual=disabled \
                       -Dogg=disabled \
                       -Dopus=disabled \
                       -Dpango=disabled \
                       -Dtheora=disabled \
                       -Dtremor=disabled \
                       -Dvorbis=disabled \
                       -Dx11=disabled \
                       -Dxshm=disabled \
                       -Dxi=disabled \
                       -Dxvideo=disabled \
                       -Dexamples=disabled \
                       -Dtests=disabled \
                       -Dtools=disabled \
                       -Dnls=disabled \
                       -Dorc=disabled \
                       -Dgobject-cast-checks=disabled \
                       -Dglib-asserts=disabled \
                       -Dglib-checks=disabled \
                       -Dintrospection=enabled \
                       -Dbinary_wrapper=${PWD}/tools/gir-bin-wrapper \
                       -Dldd_wrapper=${PWD}/tools/gir-ldd-wrapper \
                       -Ddoc=disabled"