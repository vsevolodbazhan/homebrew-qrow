cask "qrow" do
  version "0.3.0"
  sha256 "ca0ff9c05c2989130b0b3e1aeafc7c03c7198e63891da2a37dae92f20fc042d2"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
