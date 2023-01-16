PKG_NAME="gst-python"
PKG_VERSION="1.16.3"
PKG_SHA256="79d9f342bc641a1225fcd7b6acf71e1d7d8c995023f120f0d8c2f05c8fdeafde"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://gitlab.freedesktop.org/gstreamer/gst-python"
PKG_URL="https://gitlab.freedesktop.org/gstreamer/gst-python/-/archive/${PKG_VERSION}/gst-python-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain pygobject"
PKG_LONGDESC="GStreamer Python binding overrides"

PKG_MESON_OPTS_TARGET="-Dlibpython-dir=/usr/lib"
