# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="hifistreamer-app"
PKG_VERSION="0.0.6"
PKG_SHA256="5ebaed178a52b23ff56f13c480033c2000754794276e52d5c5d7e88c445a7bb3"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/orenskl/hifistreamer-app"
PKG_URL="https://github.com/orenskl/hifistreamer-app/releases/download/${PKG_VERSION}/hifistreamer-app-${PKG_VERSION}.tar.gz"
#PKG_URL="file:///media/sf_projects/hifistreamer-app-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 setuptools:target tornado psutil pyconnman"
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
