# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-tidal"
PKG_VERSION="0.3.4"
PKG_SHA256="3fcd94a2a06dbd0f942f3f1ba8ea485a2b00d5576601389504fa64bdce949ee3"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Tidal/"
PKG_URL="https://files.pythonhosted.org/packages/fc/44/084f733c04276a65e5fda98ba7f4b965fab72a7efc020e4bb0416216fc4e/mopidy_tidal-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="Python3 setuptools mopidy tidalapi"
PKG_LONGDESC="Mopidy Extension for Tidal music service integration."
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
