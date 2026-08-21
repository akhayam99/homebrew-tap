# Template for the Homebrew cask. The release workflow renders version + sha256
# and pushes the result to akhayam99/homebrew-tap (Casks/goodboy.rb).
cask "goodboy" do
  version "0.1.84"
  sha256 "7895e2de7145ffd0bb40da1e4328c5daa53017950c63e7514f7969e69ee151bd"

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
