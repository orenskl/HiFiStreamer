# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2026 Oren Sokoler

PKG_NAME="dleyna-server"
PKG_VERSION="8665ecf6c4c28a330419921871d8fefa32aa6734"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="https://github.com/intel/dleyna-server"
PKG_URL="https://github.com/intel/dleyna-server.git"
PKG_DEPENDS_TARGET="toolchain libsoup glib gssdp gupnp gupnp-av gupnp-dlna dleyna-core dleyna-connector-dbus"
PKG_LONGDESC="dleyna-server provides a service to export media servers via DLNA."

PKG_TOOLCHAIN="autotools"