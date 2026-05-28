cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "ddcdf932c73a48766ea1b16c0fb20dfe22ede81e43d7d0e9e9f86cb7a3374e97",
         intel: "a2f2d44dc540324289abb297fba3b5e6925aea5bb15923670c00e3093695e0a8"

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
