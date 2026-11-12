cask "qrow" do
  version "0.5.0"
  sha256 "c1ea3117d473ee3d9964f3fbb6d7f90c87332e76d7d0ac3cdc4b9151ee4054fc"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
