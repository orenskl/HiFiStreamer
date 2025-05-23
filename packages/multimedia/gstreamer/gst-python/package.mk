PKG_NAME="gst-python"
PKG_VERSION="1.22.0"
PKG_SHA256="6c63ad364ca4617eb2cbb3975ab26c66760eb3c7a6adf5be69f99c11e21ef3a5"
PKG_LICENSE="LGPL-2.1-or-later"
PKG_SITE="https://gitlab.freedesktop.org/gstreamer/gst-python"
PKG_URL="https://gstreamer.freedesktop.org/src/gst-python/gst-python-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain pygobject gstreamer gst-plugins-base"
PKG_LONGDESC="GStreamer Python binding overrides"

pre_configure_target() {
  PKG_CONFIG_PATH="${SYSROOT_PREFIX}/usr/lib/pkgconfig"
  PKG_MESON_OPTS_TARGET="-Dlibpython-dir=/usr/lib"
}