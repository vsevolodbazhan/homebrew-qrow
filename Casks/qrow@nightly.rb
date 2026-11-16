cask "qrow@nightly" do
  version "0.6.0-nightly.20261116.63"
  sha256 "57532e8a68b34b13a3a4f7e4980f46fe7ce5e52b1a87b859d9d02eacfb55aa99"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
