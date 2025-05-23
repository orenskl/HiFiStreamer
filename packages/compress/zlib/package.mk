# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)

PKG_NAME="zlib"
PKG_VERSION="1.3.1"
PKG_SHA256="38ef96b8dfe510d42707d9c781877914792541133e1870841463bfa73f883e32"
PKG_LICENSE="OSS"
PKG_SITE="http://www.zlib.net"
PKG_URL="http://zlib.net/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_HOST="cmake:host"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A general purpose (ZIP) data compression library."
PKG_TOOLCHAIN="cmake-make"
