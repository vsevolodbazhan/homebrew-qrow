cask "qrow@nightly" do
  version "0.3.0-nightly.20261029.24"
  sha256 "d37434550c673511415f4934cc163aa88e1779fa36e6737a1316de7a8486e8c9"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
