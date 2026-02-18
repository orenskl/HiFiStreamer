# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="gupnp-dlna"			
PKG_VERSION="0.10.5"
PKG_SHA256="123e368227c11d5c17fc1aa76cbdaffa345355eb51d172cd39fc74a5b468ff6a"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://wiki.gnome.org/Projects/GUPnP"
PKG_URL="https://download.gnome.org/sources/gupnp-dlna/${PKG_VERSION%.*}/gupnp-dlna-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2"
PKG_LONGDESC="GUPnP DLNA is a library for creating UPnP DLNA devices."

PKG_CONFIGURE_OPTS_TARGET="--enable-introspection=no"
