cask "qrow" do
  version "0.1.0"
  sha256 "3dbd58a8f8aa26139e44592cce3cc5c680e19b0c819bd7633b73fa0f56ee731c"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
