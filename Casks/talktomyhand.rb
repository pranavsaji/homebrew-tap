cask "talktomyhand" do
  version "1.2.1"
  sha256 "9acf7b41d3f289d30996a86e95ee2c23c290911a65e964f417f090b369c4feca"

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
