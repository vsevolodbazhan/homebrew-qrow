cask "qrow@nightly" do
  version "0.6.0-nightly.20261117.65"
  sha256 "a72035e834478ed2e51b2057da5a5ef00b296e84b4c528a4b1ff335e9617412c"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
