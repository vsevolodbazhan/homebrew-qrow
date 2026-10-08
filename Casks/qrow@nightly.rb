cask "qrow@nightly" do
  version "0.3.0-nightly.20261008.18"
  sha256 "89f33c238cc5ff65cd6e367a8db5a4c1beacb60c1d628cb34f78f5370caf6d5c"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
