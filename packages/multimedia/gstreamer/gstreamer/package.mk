# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2022-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="gstreamer"
PKG_VERSION="1.22.0"
PKG_SHA256="78d21b5469ac93edafc6d8ceb63bc82f6cbbee94d2f866cca6b9252157ee0a09"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://gstreamer.freedesktop.org"
PKG_URL="https://gstreamer.freedesktop.org/src/gstreamer/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib glib:host gi gi:host"
PKG_LONGDESC="GStreamer open-source multimedia framework core library"

PKG_MESON_OPTS_TARGET="-Dgst_debug=true \
                       -Dgst_parse=true \
                       -Dtracer_hooks=false \
                       -Doption-parsing=true \
                       -Dpoisoning=false \
                       -Dcheck=disabled \
                       -Dlibunwind=disabled \
                       -Dlibdw=disabled \
                       -Ddbghelp=disabled \
                       -Dbash-completion=disabled \
                       -Dcoretracers=disabled \
                       -Dexamples=disabled \
                       -Dtests=disabled \
                       -Dbenchmarks=disabled \
                       -Dnls=disabled \
                       -Dgobject-cast-checks=disabled \
                       -Dglib-asserts=disabled \
                       -Dglib-checks=disabled \
                       -Dextra-checks=disabled \
                       -Dintrospection=enabled \
                       -Dbinary_wrapper=${PWD}/tools/gir-bin-wrapper \
                       -Dldd_wrapper=${PWD}/tools/gir-ldd-wrapper \
                       -Ddoc=disabled"

post_makeinstall_target() {
  # clean up
  safe_remove ${INSTALL}/usr/share
}