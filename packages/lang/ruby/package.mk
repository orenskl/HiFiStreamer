# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2025 Oren Sokoler

PKG_NAME="ruby"
PKG_VERSION="3.4.3"
PKG_SHA256="55a4cd1dcbe5ca27cf65e89a935a482c2bb2284832939266551c0ec68b437f46"
PKG_LICENSE="BSD"
PKG_SITE="https://www.ruby-lang.org/"
PKG_URL="https://cache.ruby-lang.org/pub/ruby/${PKG_VERSION%.*}/ruby-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_HOST="toolchain libyaml:host"
PKG_LONGDESC="A dynamic, open source programming language with a focus on simplicity and productivity"
