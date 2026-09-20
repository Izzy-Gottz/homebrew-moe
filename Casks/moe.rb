cask "moe" do
  version "0.3.20"
  sha256 "92eb66fbc2ea8c593fa940e875993d66a55c688a458efb637fea41d55c8c9376"

  url "https://github.com/Izzy-Gottz/moe-releases/releases/download/v#{version}/Moe-#{version}.dmg",
      verified: "github.com/Izzy-Gottz/moe-releases/"
  name "Moe"
  desc "Mac assistant that has read your mail and calendar, remembers you, and works the apps itself"
  homepage "https://moebot.app/"

  livecheck do
    url "https://moebot.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Moe.app"

  zap trash: [
    "~/Library/Application Support/Moe",
    "~/Library/Preferences/com.moe.assistant.plist",
  ]
end
