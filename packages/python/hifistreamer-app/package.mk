# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="hifistreamer-app"
PKG_VERSION="0.0.1"
PKG_SHA256="61b28143137be799f0327ac0964f3aa1470c242ba57666e1a8648cfc9fdbe30c"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/orenskl/hifistreamer-app"
PKG_URL="https://github.com/orenskl/hifistreamer-app/releases/download/${PKG_VERSION}/hifistreamer-app-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:target tornado psutil"
PKG_LONGDESC="User Interface and backend application for HiFiStreamer"
PKG_TOOLCHAIN="manual"

make_target() {
  python3 setup.py build
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}

post_install() {
  enable_service hifistreamer-app.service
}
