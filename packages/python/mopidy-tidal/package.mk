# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="mopidy-tidal"
PKG_VERSION="0.3.2"
PKG_SHA256="7a4aa1ccac94d96a9339e451d5949903dc96dd45ec2c1b02d8193a159ad08267"
PKG_LICENSE="Apache-2.0"
PKG_SITE="https://pypi.org/project/Mopidy-Tidal/"
PKG_URL="https://files.pythonhosted.org/packages/86/1a/39879cb524cc4c874cc18172ca69ec4cc93646a73eaf87f15701518525e9/Mopidy-Tidal-${PKG_VERSION}.tar.gz"
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
