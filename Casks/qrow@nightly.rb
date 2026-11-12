cask "qrow@nightly" do
  version "0.5.0-nightly.20261112.55"
  sha256 "abb8232fa04ef71392c8f769fa2d02dc98bfb6ee57033dfaf1b99c5b0aaf6903"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
