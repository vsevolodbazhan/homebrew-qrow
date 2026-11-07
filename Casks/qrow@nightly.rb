cask "qrow@nightly" do
  version "0.4.0-nightly.20261107.41"
  sha256 "c139c1d5ea2f44da0a621a12f22ed17b32d777a0b227f3cf80959a64f76d2a5b"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
