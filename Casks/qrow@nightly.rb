cask "qrow@nightly" do
  version "0.4.0-nightly.20261111.49"
  sha256 "68c07be0058e9c18ec88833aa828ae21b3621167b00f904d09d4e5274b5f90ff"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
