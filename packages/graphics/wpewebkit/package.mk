# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023 Oren Sokoler

PKG_NAME="wpewebkit"
PKG_VERSION="2.39.5"
PKG_SHA256="0c8d256349cbccbc7080992e590456c8a66690dbe547f2d481c86ac18cee5ef0"
PKG_LICENSE="GPL"
PKG_SITE="https://wpewebkit.org"
PKG_URL="https://wpewebkit.org/releases/wpewebkit-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain cairo harfbuzz-icu libjpeg-turbo webp libwpe libtasn1 libgcrypt"
PKG_LONGDESC="WPE is the reference WebKit port for embedded and low-consumption computer devices"

PKG_CMAKE_OPTS_TARGET="-DPORT=WPE \
                       -DENABLE_INTROSPECTION=OFF \
					   -DENABLE_ACCESSIBILITY=OFF \
					   -DUSE_OPENJPEG=OFF \
					   -DUSE_WOFF2=OFF \
					   -DUSE_AVIF=OFF \
					   -DUSE_LCMS=OFF \
					   -DENABLE_BUBBLEWRAP_SANDBOX=OFF \
					   -DUSE_GSTREAMER_GL=OFF \
					   -DENABLE_GAMEPAD=OFF \
					   -DUSE_GSTREAMER_TRANSCODER=OFF \
					   -DENABLE_MEDIA_SOURCE=OFF \
					   -DENABLE_PDFJS=OFF \
					   -DENABLE_VIDEO=OFF \
					   -DENABLE_WEBDRIVER=OFF \
					   -DENABLE_WEB_AUDIO=OFF \
					   -DENABLE_WEB_CRYPTO=OFF \
					   -DENABLE_XSLT=OFF \
                       -DUSE_SOUP2=ON"
