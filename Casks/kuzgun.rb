cask "kuzgun" do
  version "0.1.0"
  sha256 "b29e81daba9c956774eee04254b3c78d3fd335f7083bf010a43a835de8a29f24"

  url "https://github.com/alpcanaydin/kuzgun/releases/download/v#{version}/Kuzgun-#{version}-arm64.dmg"
  name "Kuzgun"
  desc "Native kanban board for mattpocock/skills tickets"
  homepage "https://github.com/alpcanaydin/kuzgun"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kuzgun.app"

  zap trash: [
    "~/Library/Application Support/kuzgun",
    "~/Library/Caches/ai.reyz.kuzgun",
    "~/Library/HTTPStorages/ai.reyz.kuzgun",
    "~/Library/Preferences/ai.reyz.kuzgun.plist",
    "~/Library/Saved Application State/ai.reyz.kuzgun.savedState",
  ]
end
