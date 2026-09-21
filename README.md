# Qrow Homebrew tap

This tap publishes the Qrow macOS application from its GitHub releases.

## Install the stable release

```sh
brew tap vsevolodbazhan/qrow
brew install --cask vsevolodbazhan/qrow/qrow
```

## Install the nightly release

```sh
brew tap vsevolodbazhan/qrow
brew install --cask vsevolodbazhan/qrow/qrow@nightly
```

The tap updates `qrow` from the latest stable release and `qrow@nightly` from
the latest prerelease. A scheduled GitHub Actions job checks for new releases
every 15 minutes and records the SHA-256 checksum of each DMG.
