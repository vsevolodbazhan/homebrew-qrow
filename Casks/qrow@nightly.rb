cask "qrow@nightly" do
  version "0.2.0-nightly.20260929.5"
  sha256 "08c25819f290fc3d279f3482087997a0b33c8507b7b9a86755740fd0d0fa264f"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
