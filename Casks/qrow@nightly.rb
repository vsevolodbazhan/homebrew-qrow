cask "qrow@nightly" do
  version "0.4.0-nightly.20261103.27"
  sha256 "99f9e4d2aaa879e49cbb42b060c0e8acc0d17f1377acf4c2c92621fe31de2d0d"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
