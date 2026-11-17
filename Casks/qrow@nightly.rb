cask "qrow@nightly" do
  version "0.6.0-nightly.20261117.64"
  sha256 "acbd9657d8c2b1f09af2a97426d686e3916ce9eaf5450bcd0388fac8cee5e673"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
