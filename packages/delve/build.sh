TERMUX_PKG_HOMEPAGE=https://github.com/go-delve/delve
TERMUX_PKG_DESCRIPTION="A debugger for the Go programming language"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Krishna kanhaiya @kcubeterm"
TERMUX_PKG_VERSION=1.6.1
TERMUX_PKG_DEPENDS="golang, git"
TERMUX_PKG_SRCURL=https://github.com/go-delve/delve/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e73f7fc063632268d3bdf53486aeafd98cceb8f86f4af56903dedfebaefe690d
TERMUX_PKG_BLACKLISTED_ARCHES="arm, i686"

termux_step_make() {
	termux_setup_golang
	cd $TERMUX_PKG_SRCDIR

	mkdir -p "$TERMUX_PKG_BUILDDIR"/src/github.com/go-delve/    
	mkdir -p "$TERMUX_PREFIX"/share/doc/delve
	cp -a "$TERMUX_PKG_SRCDIR" "$TERMUX_PKG_BUILDDIR"/src/github.com/go-delve/delve/
	cd "$TERMUX_PKG_BUILDDIR"/src/github.com/go-delve/delve/cmd/dlv/
	go get -d -v
	go build
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PREFIX"/bin "$TERMUX_PKG_BUILDDIR"/src/github.com/go-delve/delve/cmd/dlv/dlv
	cp -a "$TERMUX_PKG_SRCDIR"/Documentation/* "$TERMUX_PREFIX"/share/doc/delve
}

