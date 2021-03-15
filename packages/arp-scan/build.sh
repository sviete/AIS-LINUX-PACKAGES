TERMUX_PKG_HOMEPAGE=https://github.com/royhills/arp-scan
TERMUX_PKG_DESCRIPTION="arp-scan is a command-line tool for system discovery and fingerprinting. It constructs and sends ARP requests to the specified IP addresses, and displays any responses that are received."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_VERSION=1.9.7
TERMUX_PKG_SRCURL=https://github.com/royhills/arp-scan/archive/${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e03c36e4933c655bd0e4a841272554a347cd0136faf42c4a6564059e0761c039
TERMUX_PKG_DEPENDS="libpcap"
if [[ ${TERMUX_ARCH_BITS} == 32 ]]; then
	# Retrieved from compilation on device:
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="pgac_cv_snprintf_long_long_int_format=%lld"
fi
termux_step_pre_configure () {
	cp ${TERMUX_PKG_BUILDER_DIR}/hsearch/* ${TERMUX_PKG_SRCDIR}/
	aclocal
	autoheader
	automake --add-missing
	autoconf
}

