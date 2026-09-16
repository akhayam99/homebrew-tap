# Template for the Homebrew cask. The release workflow renders version + sha256
# and pushes the result to akhayam99/homebrew-tap (Casks/goodboy.rb).
cask "goodboy" do
  version "0.3.1"
  sha256 "21578b6b44c287cee76dd539e8aa4895a164eed33b2d266a6c1e5ed47b999d2d"

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
