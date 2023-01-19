# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="libsoup"
PKG_VERSION="2.74.3"
PKG_SHA256="2e7a1313c2223c7e70cda90a8c02c679ab2bf3935c07b5bb028a9b5550411b96"
PKG_LICENSE="GPL-2.1-or-later"
PKG_SITE="https://libsoup.org/libsoup-3.0/index.html"
PKG_URL="https://gitlab.gnome.org/GNOME/libsoup/-/archive/${PKG_VERSION}/libsoup-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libpsl glib-networking"
PKG_LONGDESC="HTTP client/server library for GNOME"

pre_configure_target() {
  PKG_MESON_OPTS_TARGET="-Dtests=false -Dintrospection=disabled -Dgtk_doc=false -Dtls_check=true -Dsysprof=disabled"
}
