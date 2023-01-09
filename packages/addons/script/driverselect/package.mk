# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="driverselect"
PKG_VERSION="69429715b16af3573008898a23a0930b457a55f7"
PKG_SHA256="6062031dd1ebd3dd4f7d666de97ac3eab0877c2be12a9c785f748c49e6f5652c"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="https://libreelec.tv"
PKG_URL="https://github.com/b-jesch/script.program.driverselect/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="script.program"
PKG_SHORTDESC="script.program.driverselect"
PKG_LONGDESC="script.program.driverselect"
PKG_TOOLCHAIN="manual"

PKG_IS_ADDON="embedded"
PKG_ADDON_NAME="Driver Select"
PKG_ADDON_TYPE="xbmc.python.script"

unpack() {
  mkdir -p ${PKG_BUILD}/addon
  tar --strip-components=1 -xf ${SOURCES}/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.gz -C ${PKG_BUILD}/addon
}

make_target() {
  :
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/kodi/addons/${PKG_SECTION}.${PKG_NAME}
  cp -rP ${PKG_BUILD}/addon/* ${INSTALL}/usr/share/kodi/addons/${PKG_SECTION}.${PKG_NAME}
}
