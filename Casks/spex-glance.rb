cask "spex-glance" do
  version "0.2.2"
  sha256 "bd782958643f10265cf2bbdaade1e811e05320638c3788e9907252333c534fc3"

  url "https://github.com/davidmarcantonio/spex-glance/releases/download/v#{version}/SpexGlance-#{version}.dmg"
  name "Spex Glance"
  desc "Open Kalshi sports positions in a window, the menu bar and a widget"
  homepage "https://spex.bet/glance/"

  livecheck do
    url "https://raw.githubusercontent.com/davidmarcantonio/spex-glance/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # Updates itself through Sparkle; brew upgrade still works when the cask is bumped.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Spex Glance.app"

  zap trash: [
    "~/Library/Application Support/Spex Glance",
    "~/Library/Caches/com.example.spexglance",
    "~/Library/Containers/com.example.spexglance",
    "~/Library/Containers/com.example.spexglance.widget",
    "~/Library/Group Containers/group.com.example.spexglance",
    "~/Library/HTTPStorages/com.example.spexglance",
    "~/Library/Preferences/com.example.spexglance.plist",
    "~/Library/Saved Application State/com.example.spexglance.savedState",
  ]
end
