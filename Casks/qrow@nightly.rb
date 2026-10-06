cask "qrow@nightly" do
  version "0.3.0-nightly.20261006.14"
  sha256 "deefe2827f7383a87042ace1199ac2b859e5b3adeb3bfa2304a49790330cbe0e"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
