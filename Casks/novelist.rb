cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "5140d1fb41ec1055e4ee175aed6fe83c7fc3f9e01375a3eb094c43aaeea3affc",
         intel: "a6f0478c893a7836bbe25ac10079a92e5bcb5232acb987fa3517e1d21fb1da46"

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
