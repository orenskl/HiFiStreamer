# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="urllib3"
PKG_VERSION="1.26.13"
PKG_SHA256="94c8e787aeb2820ac4b17e0a750cca25ea427ec911d0999636808bb6ef2f7164"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/urllib3/"
PKG_URL="https://github.com/urllib3/urllib3/archive/refs/tags/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="urllib3 is a powerful, user-friendly HTTP client for Python"
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
