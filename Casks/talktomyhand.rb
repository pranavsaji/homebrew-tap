cask "talktomyhand" do
  version "1.2.0"
  sha256 "705e3a5234a0373a920b7ecb6a093bcbf24ae79d1b81a50fa8dbf5570a9eafb6"

  url "https://github.com/pranavsaji/talktomyhand-releases/releases/download/v#{version}/Talktomyhand-#{version}.dmg",
      verified: "github.com/pranavsaji/talktomyhand-releases/"
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
