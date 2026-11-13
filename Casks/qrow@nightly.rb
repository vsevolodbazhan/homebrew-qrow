cask "qrow@nightly" do
  version "0.5.1-nightly.20261113.60"
  sha256 "33d16d4c6334832fe1bd08b3f97b71eac81dde6123f8d0650bf72af04de9a19c"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
