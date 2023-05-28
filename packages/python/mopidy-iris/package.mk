# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-iris"
PKG_VERSION="3.67.0"
PKG_SHA256="b06e39ea4f80d84e0f62f632f01c8aaec8842c75095f5ea5c066138a70f4de4e"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Iris/"
PKG_URL="https://files.pythonhosted.org/packages/4d/72/6b2f0ff046624e568ae0e21b8e5b63e169400d4efdc2b10984820e514bf1/Mopidy-Iris-${PKG_VERSION}.tar.gz"
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
