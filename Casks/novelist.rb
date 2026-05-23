cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "bbf29720bef0a553f321fb39c96ab1127c414156f46d63ca7cb5e2befc545f38",
         intel: "4bf7b5350124a5b6840233446dbe13c894f45ca41e8af05035602038d1103b4e"

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
