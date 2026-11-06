cask "qrow@nightly" do
  version "0.4.0-nightly.20261106.33"
  sha256 "54c3e4452b8d2160646e1ae77cd865b0337cba6d7971cd33406d61966aba8dbb"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
