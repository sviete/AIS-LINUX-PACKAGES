TERMUX_PKG_HOMEPAGE=https://www.netfilter.org/projects/libnftnl/
TERMUX_PKG_DESCRIPTION="Netfilter library providing interface to the nf_tables subsystem"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=1.1.8
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=http://netfilter.org/projects/libnftnl/files/libnftnl-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=04a3fa5b08b736268f7e65836b9f05d9d5f438181467bee3c76c3c4a4f3ab711
TERMUX_PKG_DEPENDS="libmnl"
TERMUX_PKG_BREAKS="libnftnl-dev"
TERMUX_PKG_REPLACES="libnftnl-dev"

