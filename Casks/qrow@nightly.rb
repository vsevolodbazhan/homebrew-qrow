cask "qrow@nightly" do
  version "0.5.0-nightly.20261112.56"
  sha256 "ea98b0cc4b94eda69c2f8a33ee0914724e709eecf91dbb35ca219614cb6894a4"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
