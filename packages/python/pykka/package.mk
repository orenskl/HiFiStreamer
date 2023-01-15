# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="pykka"
PKG_VERSION="3.1.1"
PKG_SHA256="7521060e522bc20676304cf6b226bbfa879a720e4e8f0f04ac5ddc213cabcdde"
PKG_LICENSE="OSS"
PKG_SITE="https://pypi.org/project/pykka/"
PKG_URL="https://github.com/jodal/${PKG_NAME}/archive/refs/tags/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="Pykka makes it easier to build concurrent applications"

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
