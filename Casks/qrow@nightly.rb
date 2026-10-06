cask "qrow@nightly" do
  version "0.3.0-nightly.20261006.15"
  sha256 "ac9e8ef50b4daf44935ae6bdd65c7d136545a1ce9505934692cf037ed8cdb7e4"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
