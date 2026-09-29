cask "qrow@nightly" do
  version "0.2.0-nightly.20260929.8"
  sha256 "488529cf86a41b3b21d1c151a21310d8dd0e093e9af8bfb04bf73e7855d87573"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
