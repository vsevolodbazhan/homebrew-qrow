cask "qrow@nightly" do
  version "0.4.0-nightly.20261102.26"
  sha256 "45979e0f14d1eb9f9b49816f44eaec6d52f554db0c63b8f8aca52f072547ec23"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
