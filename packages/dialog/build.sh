TERMUX_PKG_HOMEPAGE=https://invisible-island.net/dialog/
TERMUX_PKG_DESCRIPTION="Application used in shell scripts which displays text user interface widgets"
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_DEPENDS="ncurses"
TERMUX_PKG_VERSION="1.3-20210117"
TERMUX_PKG_SRCURL=https://fossies.org/linux/misc/dialog-${TERMUX_PKG_VERSION}.tgz
TERMUX_PKG_SHA256=3c1ed08f44bcf6f159f2aa6fde765db94e8997b3eefb49d8b4c86691693c43e1
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-ncursesw --enable-widec --with-pkg-config"

termux_step_pre_configure() {
	# Certain packages are not safe to build on device because their
	# build.sh script deletes specific files in $TERMUX_PREFIX.
	if $TERMUX_ON_DEVICE_BUILD; then
		termux_error_exit "Package '$TERMUX_PKG_NAME' is not safe for on-device builds."
	fi

	# Put a temporary link for libtinfo.so
	ln -s -f $TERMUX_PREFIX/lib/libncursesw.so $TERMUX_PREFIX/lib/libtinfo.so
}

termux_step_post_make_install() {
	rm $TERMUX_PREFIX/lib/libtinfo.so
	cd $TERMUX_PREFIX/bin
	ln -f -s dialog whiptail
}

