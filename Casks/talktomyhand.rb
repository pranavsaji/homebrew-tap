cask "talktomyhand" do
  version "1.2.2"
  sha256 "d228e393a8939384f5ebd322bbc3d0ffa3561f38b55f2c424852046c9e1a23d7"

  url "https://github.com/pranavsaji/talktomyhand-releases/releases/download/v#{version}/Talktomyhand-#{version}.dmg"
  name "Talktomyhand"
  desc "Voice dictation that types clean text at the cursor"
  homepage "https://talktomyhand-api.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Talktomyhand.app"

  zap trash: [
    "~/Library/Application Support/Talktomyhand",
    "~/Library/Caches/com.pranavsaji.talktomyhand",
    "~/Library/Containers/com.pranavsaji.talktomyhand",
    "~/Library/HTTPStorages/com.pranavsaji.talktomyhand",
    "~/Library/Preferences/com.pranavsaji.talktomyhand.plist",
  ]
end
