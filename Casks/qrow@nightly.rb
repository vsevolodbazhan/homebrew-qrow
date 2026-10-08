cask "qrow@nightly" do
  version "0.3.0-nightly.20261008.19"
  sha256 "7f4382919b50ce4093492301f7b642f900f4b2f9181a39b4668caa55ee12ac69"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
