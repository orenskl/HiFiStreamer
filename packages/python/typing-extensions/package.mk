# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="typing-extensions"
PKG_VERSION="4.12.2"
PKG_SHA256="bf6f56b36d8bc9156e518eb1cc37a146284082fa53522033f772aefbecfd15fc"
PKG_LICENSE="PSF-2.0"
PKG_SITE="https://pypi.org/project/typing-extensions/"
PKG_URL="https://github.com/python/typing_extensions/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools"
PKG_LONGDESC="Backported and Experimental Type Hints for Python 3.9+"
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
