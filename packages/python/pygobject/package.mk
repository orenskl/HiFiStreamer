# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="pygobject"
PKG_VERSION="3.42.2"
PKG_SHA256="56e6833f875bfe55409c780b9c87a9fc426c1cd55b3c65836de9d384d206201f"
PKG_LICENSE="OSS"
PKG_SITE="https://pygobject.readthedocs.io/en/latest/"
PKG_URL="https://gitlab.gnome.org/GNOME/pygobject/-/archive/${PKG_VERSION}/pygobject-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host gi"
PKG_LONGDESC="PyGObject is a Python package which provides bindings for GObject based libraries"

pre_configure_target() {
  PKG_CONFIG_PATH="${SYSROOT_PREFIX}/usr/lib/pkgconfig"

  PKG_MESON_OPTS_TARGET=" \
    -Dpython=${TOOLCHAIN}/bin/${PKG_PYTHON_VERSION} \
    -Dpycairo=disabled \
    -Dtests=false"
}

post_makeinstall_target() {
  python_remove_source

  rm -rf ${INSTALL}/usr/bin
  rm -rf ${INSTALL}/usr/share/pygobject
}