cask "qrow" do
  version "0.4.1"
  sha256 "cfb4f953765474f775751aae350198dc17f357ee0bbe8005be955db5fe3804a0"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
