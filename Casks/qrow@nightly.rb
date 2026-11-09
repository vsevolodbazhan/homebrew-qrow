cask "qrow@nightly" do
  version "0.4.0-nightly.20261109.43"
  sha256 "666373726f9bee4b5c457b778c8d5ff51909427abdef0472f8748148665c576f"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
