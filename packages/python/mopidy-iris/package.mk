# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-iris"
PKG_VERSION="3.69.3"
PKG_SHA256="3c40179daa62cb1a338a3474e7723bcd061160b783395ef5f4bd106cedabe2be"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Iris/"
PKG_URL="https://files.pythonhosted.org/packages/90/2d/725b320e5cd0470a3ac4afd0f2d858c72a540dc14217d99d2606d7ebaf77/Mopidy-Iris-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools mopidy"
PKG_LONGDESC="Discover, explore and manage your music library across multiple sources with this beautiful web-based interface."
PKG_TOOLCHAIN="manual"

make_target() {
  python3 setup.py build --cross-compile
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
  touch ${INSTALL}/IS_CONTAINER
}
