#!/bin/bash
# Update signal-cli-native-bin PKGBUILD to the latest GitHub release and optionally build.
# Usage: ./update.sh [--install]

set -euo pipefail
cd "$(dirname "$0")"

echo "→ Fetching latest release..."
latest=$(curl -sS https://api.github.com/repos/AsamK/signal-cli/releases/latest)
tag=$(echo "$latest" | jq -r .tag_name)
ver="${tag#v}"
echo "   latest: $tag → pkgver=$ver"

echo "→ Updating pkgver..."
sed -i "s/^pkgver=.*/pkgver=$ver/" PKGBUILD
sed -i "s/^pkgrel=.*/pkgrel=1/" PKGBUILD

echo "→ Computing new checksums..."
url="https://github.com/AsamK/signal-cli/releases/download/$tag/signal-cli-$ver-Linux-native.tar.gz"
tmp=$(mktemp)
curl -sSL "$url" -o "$tmp"
sum256=$(sha256sum "$tmp" | cut -d' ' -f1)
sum512=$(sha512sum "$tmp" | cut -d' ' -f1)
rm -f "$tmp"
echo "   sha256: $sum256"
echo "   sha512: $sum512"

echo "→ Updating checksums..."
sed -i "/^sha256sums=(/,/)/ s|'[a-f0-9]\{64\}'|'$sum256'|" PKGBUILD
sed -i "/^sha512sums=(/,/)/ s|'[a-f0-9]\{128\}'|'$sum512'|" PKGBUILD

echo "→ Done. pkgver=$ver pkgrel=1"

if [ "${1:-}" = "--install" ]; then
    exec makepkg -si --noconfirm
fi
