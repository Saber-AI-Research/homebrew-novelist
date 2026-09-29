cask "novelist" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "e6f387aa1cc6475a9839e11898185fef68c759b69f9f7260230461575128cebb",
         intel: "93dfbc9c2c7a1457050ecb7eeab61e8295b5772759e238045cb8e0086f5ba6d1"

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
  depends_on macos: :big_sur

  app "Novelist.app"

  # Novelist ships ad-hoc signed — there is no Apple Developer ID signature or
  # notarization yet, so Gatekeeper refuses to launch the quarantined copy that
  # Homebrew stages ("Novelist is damaged and can't be opened"). Clearing the
  # quarantine flag is what makes `brew install --cask` usable at all here.
  # Delete this block once the release pipeline signs and notarizes the app.
  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-d", "-r", "com.apple.quarantine", "#{appdir}/Novelist.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/.novelist",
    "~/Library/Application Support/com.novelist.desktop",
    "~/Library/Caches/com.novelist.desktop",
    "~/Library/Logs/com.novelist.desktop",
    "~/Library/Preferences/com.novelist.desktop.plist",
    "~/Library/Saved Application State/com.novelist.desktop.savedState",
  ]
end
