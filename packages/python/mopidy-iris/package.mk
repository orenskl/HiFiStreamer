# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-iris"
PKG_VERSION="3.66.0"
PKG_SHA256="f26fac05d7b038a79ea8acf6d52f096e0519edb089d08eb5a7374c8158e8ded8"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Iris/"
PKG_URL="https://files.pythonhosted.org/packages/30/e8/051d69c47140a1c055115e0bd9d7c6b90cc9ed2bc997a49e673d106bb3e1/Mopidy-Iris-${PKG_VERSION}.tar.gz"
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
}
