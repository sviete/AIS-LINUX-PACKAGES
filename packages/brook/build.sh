TERMUX_PKG_HOMEPAGE=https://github.com/txthinking/brook
TERMUX_PKG_DESCRIPTION="A cross-platform strong encryption and not detectable proxy. Zero-Configuration."
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Krishna kanhaiya @kcubeterm"
TERMUX_PKG_VERSION=20210601
TERMUX_PKG_SRCURL=https://github.com/txthinking/brook/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=434168ca525f3e53685ba483e214825831f31aab6437f6d52067fca5746d3cc9

termux_step_make() {
	termux_setup_golang

	cd "$TERMUX_PKG_SRCDIR"

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/txthinking
	mkdir -p "$TERMUX_PREFIX"/share/doc/brook
	cp -a "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/txthinking/brook
	cd "$GOPATH"/src/github.com/txthinking/brook/cli/brook
	go get -d -v
	go build -o brook 
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PREFIX"/bin "$GOPATH"/src/github.com/txthinking/brook/cli/brook/brook
	cp -r "$TERMUX_PKG_SRCDIR"/docs/* "$TERMUX_PREFIX"/share/doc/brook
}

