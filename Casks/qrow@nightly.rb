cask "qrow@nightly" do
  version "0.5.1-nightly.20261112.58"
  sha256 "157cd1965a4a85de94a650ee80b765c2e6904b0cb0ba4ad9c564e703f1c7e11f"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
