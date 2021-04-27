TERMUX_PKG_HOMEPAGE=https://github.com/apple/swift-corelibs-libdispatch
TERMUX_PKG_DESCRIPTION="The libdispatch project, for concurrency on multicore hardware"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@buttaface"
_VERSION=5.4
TERMUX_PKG_VERSION=1:${_VERSION}
TERMUX_PKG_SRCURL=https://github.com/apple/swift-corelibs-libdispatch/archive/swift-${_VERSION}-RELEASE.tar.gz
TERMUX_PKG_SHA256=bafbcc1feaf8ac3a82edffde27b85820936cbfd0d194c9c1a320a13c356083c0
TERMUX_PKG_DEPENDS="libc++, libblocksruntime"

