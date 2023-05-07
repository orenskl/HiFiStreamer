# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="gi"
PKG_VERSION="1.75.6"
PKG_SHA256="6868ef8033945452786403bc2723b905ef7a4678ca183ba1dd63d965255a2ff0"
PKG_LICENSE="LGPL"
PKG_SITE="https://gi.readthedocs.io/en/latest/"
PKG_URL="https://gitlab.gnome.org/GNOME/gobject-introspection/-/archive/${PKG_VERSION}/gobject-introspection-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3:host gi:host glib"
PKG_DEPENDS_HOST="toolchain Python3:host glib:host"
PKG_LONGDESC="GObject introspection is a middleware layer between C libraries (using GObject) and language bindings."
PKG_TOOLCHAIN="meson"

PKG_MESON_OPTS_TARGET="-Dgi_cross_use_prebuilt_gi=true \
					   -Dgi_cross_binary_wrapper=${PKG_DIR}/scripts/g-ir-scanner-binary-wrapper"

PKG_MESON_OPTS_HOST="-Dbuild_introspection_data=false"
