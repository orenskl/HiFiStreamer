# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="charset-normalizer"
PKG_VERSION="2.1.1"
PKG_SHA256="6a6a202ec93ccde145ebf40e9dda7b1cd246d576533e12b8dfeaf1202e5eb912"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/charset-normalizer/"
PKG_URL="https://github.com/Ousret/charset_normalizer/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="Truly universal encoding detector in pure Python"
PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="${SYSROOT_PREFIX}/usr"
}

make_target() {
  python3 setup.py build --cross-compile
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source

  rm -rf ${INSTALL}/usr/lib/python*/site-packages/*/tests
}
