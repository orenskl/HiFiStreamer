# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="libpsl"
PKG_VERSION="0.21.0"
PKG_SHA256="41bd1c75a375b85c337b59783f5deb93dbb443fb0a52d257f403df7bd653ee12"
PKG_LICENSE="MIT"
PKG_SITE="https://rockdaboot.github.io/libpsl/"
PKG_URL="https://github.com/rockdaboot/libpsl/releases/download/libpsl-${PKG_VERSION}/libpsl-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain meson:host libunistring"
PKG_LONGDESC="C library for the Public Suffix List"
