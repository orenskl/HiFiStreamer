# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="file"
PKG_VERSION="5.41"
PKG_SHA256="088fd09e8f2f7e8fda05e07ba9586df8708e1676a44db207b4496bd44e7f49f4"
PKG_LICENSE="BSD"
PKG_SITE="http://www.darwinsys.com/file/"
PKG_URL="https://github.com/file/file/archive/FILE${PKG_VERSION/./_}.tar.gz"
PKG_DEPENDS_HOST="toolchain:host"
PKG_DEPENDS_TARGET="toolchain file:host zlib"
PKG_LONGDESC="The file utility is used to determine the types of various files."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_HOST="--enable-fsect-man5 \
                         --enable-static \
                         --disable-shared"

PKG_CONFIGURE_OPTS_TARGET="${PKG_CONFIGURE_OPTS_HOST}"
