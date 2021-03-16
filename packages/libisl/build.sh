TERMUX_PKG_HOMEPAGE=http://isl.gforge.inria.fr/
TERMUX_PKG_DESCRIPTION="Library for manipulating sets and relations of integer points bounded by linear constraints"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.23
TERMUX_PKG_SRCURL=http://isl.gforge.inria.fr/isl-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=5efc53efaef151301f4e7dde3856b66812d8153dede24fab17673f801c8698f2
TERMUX_PKG_DEPENDS="libgmp"
TERMUX_PKG_BREAKS="libisl-dev"
TERMUX_PKG_REPLACES="libisl-dev"

