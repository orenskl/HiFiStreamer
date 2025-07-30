# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="python-dbus-next"
PKG_VERSION="0.2.3"
PKG_SHA256="db19689b0de50edd8587e8b55fcc6c30fe5155d813b9972e152ee05790beef59"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/altdesktop/python-dbus-next"
PKG_URL="https://github.com/altdesktop/python-dbus-next/archive/refs/tags/v{PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python3"
PKG_LONGDESC="A zero-dependency DBus library for Python with asyncio support."
PKG_TOOLCHAIN="manual"

make_target() {
  python3 setup.py build
}

makeinstall_target() {
  python3 setup.py install --root=${INSTALL} --prefix=/usr
}

post_makeinstall_target() {
  python_remove_source
}
