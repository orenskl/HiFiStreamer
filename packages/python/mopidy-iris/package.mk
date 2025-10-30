# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-iris"
PKG_VERSION="3.70.0"
PKG_SHA256="99dff56e54d3b6388001bfe388b13611f8929485301206bc53b3a2b8a6b8eba9"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Iris/"
PKG_URL="https://files.pythonhosted.org/packages/5d/9c/78561ea36ab73ae5bfe1dfd16ac1e0dcad6ac9303d969f906f4b7e37ba12/mopidy_iris-${PKG_VERSION}.tar.gz"
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
