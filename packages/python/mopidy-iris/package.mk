# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-iris"
PKG_VERSION="3.68.0"
PKG_SHA256="55cb30b1d04124d9b2daf741dc00e44b90f194e0c55980fa1f1d76cd893e2464"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Iris/"
PKG_URL="https://files.pythonhosted.org/packages/89/3a/2cba5e80775225b14aeb72592fa07a505d1b83c96b915eafc516d18a123c/Mopidy-Iris-${PKG_VERSION}.tar.gz"
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
