cask "memoe" do
  version "0.3.24"
  sha256 "4381edf577d987eddda571d9b636d37be9787ad6ef2fdfe2d9a5b148021532e2"

  url "https://github.com/Izzy-Gottz/moe-releases/releases/download/v#{version}/Memoe-#{version}.dmg",
      verified: "github.com/Izzy-Gottz/moe-releases/"
  name "Memoe"
  desc "Voice agent that lives in the notch and answers out loud from any app"
  homepage "https://memoe.app/"

  livecheck do
    url "https://memoe.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Memoe.app"

  zap trash: [
    "~/.moe",
    "~/Library/Application Support/Moe",
    "~/Library/Preferences/com.memoe.app.plist",
  ]
end
