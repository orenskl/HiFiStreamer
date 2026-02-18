# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="gupnp"			
PKG_VERSION="1.2.7"
PKG_SHA256="8441276f1afd0176e6f595026a3a507eed1809abfa04026bad3f21622b3523ec"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://wiki.gnome.org/Projects/GUPnP"
PKG_URL="https://download.gnome.org/sources/gupnp/${PKG_VERSION%.*}/gupnp-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2 gssdp libsoup"
PKG_LONGDESC="GUPnP is a framework for creating UPnP devices and control points."

PKG_MESON_OPTS_TARGET="-Dintrospection=false -Dvapi=false -Dgtk_doc=false"
