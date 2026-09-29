cask "kuzgun" do
  version "0.2.0"
  sha256 "a60f25dec074d22e28bb3f5da1fdc1679304c5eebca7cca8d133dd0356f33457"

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
