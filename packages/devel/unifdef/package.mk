# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="unifdef"
PKG_VERSION="2.12"
PKG_SHA256="fba564a24db7b97ebe9329713ac970627b902e5e9e8b14e19e024eb6e278d10b"
PKG_LICENSE="BSD"
PKG_SITE="https://dotat.at/prog/unifdef/"
PKG_URL="${PKG_SITE}${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="toolchain"
PKG_SHORTDESC="unifdef: Remove ifdef lines from C source"

PKG_MAKEINSTALL_OPTS_HOST="prefix=${TOOLCHAIN}"