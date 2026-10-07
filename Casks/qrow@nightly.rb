cask "qrow@nightly" do
  version "0.3.0-nightly.20261007.16"
  sha256 "597c0f6d385b4cda705d6d0bf078e69d058ab13efed0c74f3af7709d42122d0e"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
