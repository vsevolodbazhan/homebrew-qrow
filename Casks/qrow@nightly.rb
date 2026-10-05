cask "qrow@nightly" do
  version "0.3.0-nightly.20261005.12"
  sha256 "2e048d322329c27bf224a0ced40e7d6ff62589c81f5547e1d4bb112e11f32a5a"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
