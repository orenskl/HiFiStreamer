# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-tidal"
PKG_VERSION="0.3.11"
PKG_SHA256="c18794cae8908daeeb4243b0eeef6e489cd0c31078747ea775c3dc4fe816ad84"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Tidal/"
PKG_URL="https://files.pythonhosted.org/packages/ac/b7/b887a355a3e5f967067dd48db6d958d0a290f0083eeb43d807bc080460fb/mopidy_tidal-${PKG_VERSION}.tar.gz"
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
