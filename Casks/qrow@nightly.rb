cask "qrow@nightly" do
  version "0.5.0-nightly.20261111.52"
  sha256 "becdac555bc73125a5896607a91c1413e85f8fce0a8a83f4dd959f7fab613fb9"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
