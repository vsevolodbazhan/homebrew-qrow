cask "qrow@nightly" do
  version "0.1.0-nightly.20260921.1"
  sha256 "36add82f5b87caf09427da8faf5d8b04dcf80fba4898d30245654daa8e2ba084"
  url "https://github.com/vsevolodbazhan/qrow/releases/download/v#{version}/Qrow-#{version}.dmg"

  name "Qrow"
  desc "Desktop SQL client for Apache Kyuubi and Spark"
  homepage "https://github.com/vsevolodbazhan/qrow"

  depends_on macos: ">= :big_sur"
  app "Qrow.app"
end
