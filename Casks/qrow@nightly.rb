cask "qrow@nightly" do
  version "0.3.0-nightly.20261006.13"
  sha256 "bc5bbbfeaa9c24df956e8f8b42447f25fd2ab83460db2389bbe0ad2fd644a282"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
