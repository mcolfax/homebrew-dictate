cask "dictate" do
  version "1.5.0"
  sha256 "ed88bef5da2897cceb9d3b1b296aca41b06e46f9066e1af207183478c4d00ebc"

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
