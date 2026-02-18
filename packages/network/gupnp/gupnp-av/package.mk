# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="gupnp-av"			
PKG_VERSION="0.12.11"
PKG_SHA256="689dcf1492ab8991daea291365a32548a77d1a2294d85b33622b55cca9ce6fdc"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://wiki.gnome.org/Projects/GUPnP"
PKG_URL="https://download.gnome.org/sources/gupnp-av/${PKG_VERSION%.*}/gupnp-av-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib gupnp"
PKG_LONGDESC="GUPnP AV is a library for creating UPnP AV devices."

PKG_CONFIGURE_OPTS_TARGET="--enable-introspection=no"
