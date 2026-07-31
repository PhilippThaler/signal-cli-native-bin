# Maintainer: Philipp Thaler <philipp@thaler.dev>
pkgname=signal-cli-native-bin
pkgver=0.14.6
pkgrel=1
pkgdesc="signal-cli provides a commandline and dbus interface for the Signal messenger (GraalVM native binary)"
arch=('x86_64')
url="https://github.com/AsamK/signal-cli"
license=('GPL-3.0-only')
provides=('signal-cli')
conflicts=('signal-cli')

source=("https://github.com/AsamK/signal-cli/releases/download/v$pkgver/signal-cli-$pkgver-Linux-native.tar.gz")
sha256sums=('c78639c2d3c14cd004872a99ecf129bd7d7c26ee7d9844d50c2b0afdafefea68')

package() {
    install -Dm755 "$srcdir/signal-cli" "$pkgdir/usr/bin/signal-cli"
}
