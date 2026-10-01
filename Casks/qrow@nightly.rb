cask "qrow@nightly" do
  version "0.2.0-nightly.20261001.10"
  sha256 "6ca68e2ff6cf8dd8c4f30a0a0ce2e2e476791c0850d0e4f05fb63dadacb7f030"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
