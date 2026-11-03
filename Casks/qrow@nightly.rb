cask "qrow@nightly" do
  version "0.4.0-nightly.20261103.30"
  sha256 "62ed8af086ca6cbcf127fe3500499c11fbfdc475d1a588dbc30a11fff9e15502"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
