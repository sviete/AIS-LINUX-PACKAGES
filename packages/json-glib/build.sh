TERMUX_PKG_HOMEPAGE=https://wiki.gnome.org/Projects/JsonGlib
TERMUX_PKG_DESCRIPTION="GLib JSON manipulation library"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.6.2
TERMUX_PKG_SRCURL=https://download.gnome.org/sources/json-glib/${TERMUX_PKG_VERSION:0:3}/json-glib-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=a33d66c6d038bda46b910c6c6d59c4e15db014e363dc997a0414c2e07d134f24
TERMUX_PKG_DEPENDS="glib"
TERMUX_PKG_BREAKS="json-glib-dev"
TERMUX_PKG_REPLACES="json-glib-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-Dintrospection=disabled
-Dgtk_doc=disabled
"
TERMUX_PKG_RM_AFTER_INSTALL="
share/installed-tests
libexec/installed-tests
bin/
"

