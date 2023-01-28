# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="libwpe"
PKG_VERSION="1.14.0"
PKG_SHA256="c073305bbac5f4402cc1c8a4753bfa3d63a408901f86182051eaa5a75dd89c00"
PKG_LICENSE="GPL"
PKG_SITE="https://wpewebkit.org"
PKG_URL="https://wpewebkit.org/releases/libwpe-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain mesa"
PKG_LONGDESC="The libwpe package contains a general purpose library for WPE WebKit and the WPE Renderer."

PKG_MESON_OPTS_TARGET="-Denable-xkb=false"