TERMUX_PKG_HOMEPAGE=https://www.gnu.org.ua/software/gdbm/
TERMUX_PKG_DESCRIPTION="Library of database functions that use extensible hashing"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.19
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/gdbm/gdbm-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=37ed12214122b972e18a0d94995039e57748191939ef74115b1d41d8811364bc
TERMUX_PKG_DEPENDS="readline"
TERMUX_PKG_BREAKS="gdbm-dev"
TERMUX_PKG_REPLACES="gdbm-dev"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-libgdbm-compat"

