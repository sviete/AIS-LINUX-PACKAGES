TERMUX_PKG_HOMEPAGE=https://exiftool.org/
TERMUX_PKG_DESCRIPTION="Utility for reading, writing and editing meta information in a wide variety of files."
TERMUX_PKG_LICENSE="Artistic-License-2.0"
TERMUX_PKG_MAINTAINER="Leonid Pliushch <leonid.pliushch@gmail.com>"
TERMUX_PKG_VERSION=12.10
TERMUX_PKG_SRCURL="http://www.sno.phy.queensu.ca/~phil/exiftool/Image-ExifTool-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=da611df6b25e5f7750ebe34c6b565bb7a4027c4ca209f9de723555f9dc204976
TERMUX_PKG_DEPENDS="perl"
termux_step_make_install() {
	local current_perl_version=$(. $TERMUX_SCRIPTDIR/packages/perl/build.sh; echo $TERMUX_PKG_VERSION)
	install -Dm700 "$TERMUX_PKG_SRCDIR"/exiftool "$TERMUX_PREFIX"/bin/exiftool
	find "$TERMUX_PKG_SRCDIR"/lib -name "*.pod" -delete
	mkdir -p "$TERMUX_PREFIX/lib/perl5/site_perl/$current_perl_version"
	rm -rf "$TERMUX_PREFIX/lib/perl5/site_perl/${current_perl_version}"/{Image,File}
	cp -a "$TERMUX_PKG_SRCDIR"/lib/{Image,File} "$TERMUX_PREFIX/lib/perl5/site_perl/${current_perl_version}/"
}
