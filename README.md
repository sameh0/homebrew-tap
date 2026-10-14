# sameh0/tap

Homebrew tap for [Android Rapid Transfer](https://github.com/sameh0/android-rapid-transfer),
a native macOS app for fast file transfer between Android and Mac.

## Install

```sh
brew install --cask sameh0/tap/android-rapid-transfer
```

The app updates itself (Sparkle), so `brew upgrade` leaves it alone unless you pass
`--greedy`.

## Uninstall

```sh
brew uninstall --cask android-rapid-transfer
# also remove settings, caches and transfer history:
brew uninstall --zap --cask android-rapid-transfer
```
