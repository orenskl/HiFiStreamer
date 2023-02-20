# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="psutil"
PKG_VERSION="5.9.4"
PKG_SHA256="721a5c727ee476f36cd1a4d44b1f6dc29a345a62eedfb1420da4b14422748bdb"
PKG_LICENSE="BSD-3c"
PKG_SITE="https://pypi.org/project/psutil/"
PKG_URL="https://github.com/giampaolo/psutil/archive/refs/tags/release-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3 distutilscross:host"
PKG_LONGDESC="Cross-platform lib for process and system monitoring in Python"

PKG_TOOLCHAIN="manual"

pre_make_target() {
  export PYTHONXCPREFIX="${SYSROOT_PREFIX}/usr"
  export LDSHARED="${TOOLCHAIN}/bin/x86_64-libreelec-linux-gnu-gcc -shared"
}

make_target() {
  python3 setup.py build_ext
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source

  rm -rf ${INSTALL}/usr/lib/python*/site-packages/*/tests
}