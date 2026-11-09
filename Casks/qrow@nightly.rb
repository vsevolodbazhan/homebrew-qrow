cask "qrow@nightly" do
  version "0.4.0-nightly.20261109.44"
  sha256 "43f47d836814766f482dbf436310d161fda47c6aab22a30ec79bf4f69496f617"

  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"
  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on :macos

  app "Qrow.app"
end
