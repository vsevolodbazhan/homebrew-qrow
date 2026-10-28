cask "qrow@nightly" do
  version "0.3.0-nightly.20261028.23"
  sha256 "636a084cfb37fb0f35884520c793ee1a0e36a1166fda346ad1e10343a02f2f99"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
