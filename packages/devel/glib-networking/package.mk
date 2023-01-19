# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="glib-networking"
PKG_VERSION="2.64.3"
PKG_SHA256="1a89ec90a26e9577d86f51fba0c33c2c0f62670567ff8c58e0c905762bdff923"
PKG_LICENSE="LGPL2.1"
PKG_SITE="https://gitlab.gnome.org/GNOME/glib-networking"
PKG_URL="https://gitlab.gnome.org/GNOME/glib-networking/-/archive/${PKG_VERSION}/glib-networking-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain gnutls openssl"
PKG_LONGDESC="Network extensions for GLib"

pre_configure_target() {
  PKG_MESON_OPTS_TARGET="-Dgnutls=disabled -Dopenssl=enabled"
}