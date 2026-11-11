cask "qrow" do
  version "0.4.0"
  sha256 "dc32b252dfc2850215b9a5b1f39e47fc50a0534fb3a52ebcbbd5b0223b3fe476"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
