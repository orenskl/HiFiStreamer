# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="gi"
PKG_VERSION="1.76.1"
PKG_SHA256="e744cb85c63ecb0f2c88f84f87db66f393fdb201233198ae9d5e6d68afe5de5c"
PKG_LICENSE="LGPL"
PKG_SITE="https://gi.readthedocs.io/en/latest/"
PKG_URL="https://gitlab.gnome.org/GNOME/gobject-introspection/-/archive/${PKG_VERSION}/gobject-introspection-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="glib:host qemu:host"
PKG_DEPENDS_TARGET="toolchain Python3:host gi:host"
PKG_LONGDESC="GObject introspection is a middleware layer between C libraries (using GObject) and language bindings."
PKG_TOOLCHAIN="meson"

PKG_MESON_OPTS_HOST="-Dbuild_introspection_data=false"

PKG_MESON_OPTS_TARGET="-Dgi_cross_use_prebuilt_gi=true \
                       -Dgi_cross_binary_wrapper=${PWD}/tools/gir-bin-wrapper \
                       -Dgi_cross_ldd_wrapper=${PWD}/tools/gir-ldd-wrapper"

post_makeinstall_target(){

  rm -rf ${INSTALL}/usr/bin
  rm -rf ${INSTALL}/usr/include
  rm -rf ${INSTALL}/usr/share
  rm -rf ${INSTALL}/usr/lib/gobject-introspection
  rm -rf ${INSTALL}/usr/lib/pkgconfig
  
  # gi binaries must be executed from toolchain
  sed -e "s#bindir=\${prefix}/bin#bindir=${TOOLCHAIN}/bin#" -i "${SYSROOT_PREFIX}/usr/lib/pkgconfig/"gobject-introspection-1.0.pc
  # gir file should be included from toolchain
  sed -e "s#girdir=\${datadir}/gir-1\.0#girdir=${SYSROOT_PREFIX}/usr/share/gir-1\.0#" -i "${SYSROOT_PREFIX}/usr/lib/pkgconfig/"gobject-introspection-1.0.pc
}