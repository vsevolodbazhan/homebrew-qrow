cask "qrow@nightly" do
  version "0.4.0-nightly.20261110.47"
  sha256 "70099034ce3efee6942285a7c851b7dee007f938938567fd671ae5a3177f226a"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
