# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="six"
PKG_VERSION="1.16.0"
PKG_SHA256="1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
PKG_LICENSE="MIT"
PKG_SITE="https://pypi.org/project/six/"
PKG_URL="https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="Six is a Python 2 and 3 compatibility library."
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
