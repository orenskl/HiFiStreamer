# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="gssdp"			
PKG_VERSION="1.2.3"
PKG_SHA256="a263dcb6730e3b3dc4bbbff80cf3fab4cd364021981d419db6dd5a8e148aa7e8"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://wiki.gnome.org/Projects/GUPnP"
PKG_URL="https://download.gnome.org/sources/gssdp/${PKG_VERSION%.*}/gssdp-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2"
PKG_LONGDESC="GSSDP is a library for SSDP resource discovery and announcement."

PKG_MESON_OPTS_TARGET="-Dgtk_doc=false -Dintrospection=false -Dsniffer=false"