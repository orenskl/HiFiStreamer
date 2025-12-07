PKG_NAME="gst-python"
PKG_VERSION="1.20.7"
PKG_SHA256="a63db0cb502308446db3d3b0a23772f1966f9f2b98fddc22fca49560a0575adc"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://gitlab.freedesktop.org/gstreamer/gst-python"
PKG_URL="https://gstreamer.freedesktop.org/src/gst-python/gst-python-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain pygobject gstreamer gst-plugins-base"
PKG_LONGDESC="GStreamer Python binding overrides"

pre_configure_target() {
  PKG_CONFIG_PATH="${SYSROOT_PREFIX}/usr/lib/pkgconfig"
  PKG_MESON_OPTS_TARGET="-Dlibpython-dir=/usr/lib"
}