cask "qrow" do
  version "0.2.0"
  sha256 "04e760cf1d4965e9e43715c39df8e491b24def04db6d9ddcce2af6966f9f7a94"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
