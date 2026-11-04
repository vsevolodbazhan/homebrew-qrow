cask "qrow@nightly" do
  version "0.4.0-nightly.20261104.31"
  sha256 "3b56b1e95a52647b2e9b31db3fd0ad7255efed0f83fdb9c03f30cdd1496129dc"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
