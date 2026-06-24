cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "a8f87a77383ab13516d40691a5ad3a0eeb83ebc057bc5ee3505f3620d035606f",
         intel: "5a37e708d0f4201c3690760e34980ddd9a66318d268a52365fd34183dd266c3b"

  url "https://github.com/Saber-AI-Research/Novelist/releases/download/v#{version}/Novelist_#{version}_#{arch}.dmg",
      verified: "github.com/Saber-AI-Research/Novelist/"
  name "Novelist"
  desc "Lightweight WYSIWYG Markdown desktop writing app for novelists"
  homepage "https://github.com/Saber-AI-Research/Novelist"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Novelist.app"

  zap trash: [
    "~/Library/Application Support/com.novelist.desktop",
    "~/Library/Caches/com.novelist.desktop",
    "~/Library/Logs/com.novelist.desktop",
    "~/Library/Preferences/com.novelist.desktop.plist",
    "~/Library/Saved Application State/com.novelist.desktop.savedState",
    "~/.novelist",
  ]
end
