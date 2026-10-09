cask "qrow@nightly" do
  version "0.3.0-nightly.20261009.21"
  sha256 "8c59ae019fe4ca2821a866349cdff1a317801f0b52af80d7644bc56808e32a81"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
