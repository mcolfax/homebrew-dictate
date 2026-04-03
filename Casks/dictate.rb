cask "dictate" do
  version "1.5.4"
  sha256 "51de5f839ea014a9f67ef97b9d3d11c9fc0c92500c9d0c6bbea51616208bd2ea"

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
