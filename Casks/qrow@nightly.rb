cask "qrow@nightly" do
  version "0.6.0-nightly.20261124.67"
  sha256 "5f1143b9c3ab2baddf8c294d90304cff42bf6294b7b97fc8b35cc454ffb1b7df"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
