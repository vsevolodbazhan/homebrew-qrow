cask "qrow@nightly" do
  version "0.2.0-nightly.20261001.9"
  sha256 "80e6e15551bb57b7ed760392ba2b70e07b7de8788727ad4e107d96c648ebf111"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
