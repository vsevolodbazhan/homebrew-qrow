cask "qrow@nightly" do
  version "0.2.0-nightly.20260929.6"
  sha256 "c76980d9cd79da4a06d025a35a5d68467ce9633910843e05c6011ef058d5b109"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
