# Template for the Homebrew cask. The release workflow renders version + sha256
# and pushes the result to akhayam99/homebrew-tap (Casks/goodboy.rb).
cask "goodboy" do
  version "0.1.49"
  sha256 "2b0bdb309659b270025906f3ab0ebd269373e11ce4cf8c2649dda474e9d39de6"

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
