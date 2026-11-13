cask "qrow" do
  version "0.5.1"
  sha256 "9d6af6ec0b56ac94a5c137732168236ee4b4ba9ec6091a767d4d9cd924575f25"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
