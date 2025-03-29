# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="mopidy-local"
PKG_VERSION="3.3.0"
PKG_SHA256="cba6ed6c693952255a9f5efcc7b77d8eae4e4e728c6ee9621efd1a471b992b7a"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/mopidy-local/"
PKG_URL="https://files.pythonhosted.org/packages/02/c5/d099a05df7d6b0687071aa7d2d7a3499802b3b4b641531cd46ec8e6e7035/mopidy_local-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools mopidy pykka uritools"
PKG_LONGDESC="Mopidy extension for playing music from your local music archive"
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
