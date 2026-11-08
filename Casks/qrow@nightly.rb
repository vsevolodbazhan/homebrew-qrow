cask "qrow@nightly" do
  version "0.4.0-nightly.20261108.42"
  sha256 "3566eca765ee000ca2132304fa176ba86501ff7d3251f85bb170414c67e25665"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
