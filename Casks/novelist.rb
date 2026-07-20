cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "05d6bc73a1f37d4776135cf0cca7be6222ba8ad49c69dbad5007ea17f0bb6a76",
         intel: "e0a50145277e5668793823d94bb3393ce4938abc82aef99fae8bcc8478d61395"

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
  depends_on :macos

  app "Novelist.app"

  zap trash: [
    "~/.novelist",
    "~/Library/Application Support/com.novelist.desktop",
    "~/Library/Caches/com.novelist.desktop",
    "~/Library/Logs/com.novelist.desktop",
    "~/Library/Preferences/com.novelist.desktop.plist",
    "~/Library/Saved Application State/com.novelist.desktop.savedState",
  ]
end
