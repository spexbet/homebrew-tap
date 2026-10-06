cask "spex-glance" do
  version "0.3.2"
  sha256 "a698dc5d2ef5730cbd6cffee57f23bf437282310687df5a876f113add295c5f1"

  url "https://github.com/spexbet/spex-glance/releases/download/v#{version}/SpexGlance-#{version}.dmg"
  name "Spex Glance"
  desc "Open Kalshi sports positions in a window, the menu bar and a widget"
  homepage "https://spex.bet/glance/"

  livecheck do
    url "https://spex.bet/glance/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # Updates itself through Sparkle; brew upgrade still works when the cask is bumped.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Spex Glance.app"

  zap trash: [
    "~/Library/Application Support/Spex Glance",
    # 0.3.0+ (bet.spex.glance)
    "~/Library/Caches/bet.spex.glance",
    "~/Library/Containers/bet.spex.glance",
    "~/Library/Containers/bet.spex.glance.widget",
    "~/Library/Group Containers/JK9VDUH488.bet.spex.glance",
    "~/Library/HTTPStorages/bet.spex.glance",
    "~/Library/Preferences/bet.spex.glance.plist",
    "~/Library/Saved Application State/bet.spex.glance.savedState",
    # pre-0.3.0 (com.example.spexglance)
    "~/Library/Caches/com.example.spexglance",
    "~/Library/Containers/com.example.spexglance",
    "~/Library/Containers/com.example.spexglance.widget",
    "~/Library/Group Containers/group.com.example.spexglance",
    "~/Library/HTTPStorages/com.example.spexglance",
    "~/Library/Preferences/com.example.spexglance.plist",
    "~/Library/Saved Application State/com.example.spexglance.savedState",
  ]
end
