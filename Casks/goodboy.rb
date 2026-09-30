# Template for the Homebrew cask. The release workflow renders version + sha256
# and pushes the result to akhayam99/homebrew-tap (Casks/goodboy.rb).
cask "goodboy" do
  version "0.15.0"
  sha256 "261f36668a756f0356ce792b1767ad0ad879265cffed5cf5f2680a879f9375bd"

  url "https://github.com/akhayam99/goodboy/releases/download/v#{version}/Goodboy_#{version}_universal.dmg"
  name "Goodboy"
  desc "AI workspace orchestrator, local-first and provider-agnostic"
  homepage "https://github.com/akhayam99/goodboy"

  auto_updates true

  app "Goodboy.app"

  zap trash: [
    "~/Library/Application Support/com.goodboy.desktop",
    "~/Library/Caches/com.goodboy.desktop",
    "~/Library/Preferences/com.goodboy.desktop.plist",
    "~/Library/Saved Application State/com.goodboy.desktop.savedState",
  ]
end
