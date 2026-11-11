cask "qrow@nightly" do
  version "0.4.0-nightly.20261110.48"
  sha256 "0f53f8dc3d779d57b14e4993ff95bf0c6d11b80db2ce6b2b3beb013004e42ba6"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
