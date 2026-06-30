cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "1f8bbbeed0a705e4bbe08b55b3933890dee8eb4647dffbb3eef69d2d31dda8f8",
         intel: "97442e190224d2af76ed62ec6d89421e844bfb72b2a665dc8bb795a2c5a91c99"

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
