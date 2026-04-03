cask "dictate" do
  version "1.5.3"
  sha256 "e1588f01a713a4f2a4f6700d016504683553bd4b2c3e006c0c52406e98310d4d"

  url "https://github.com/mcolfax/dictate/releases/download/v#{version}/Dictate.dmg"
  name "Dictate"
  desc "Free local AI dictation for macOS — no cloud, no subscription"
  homepage "https://github.com/mcolfax/dictate"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Dictate.app"

  zap trash: [
    "~/.dictate",
    "~/Library/Logs/Dictate",
  ]
end
