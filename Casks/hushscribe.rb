cask "hushscribe" do
  version :latest
  sha256 :no_check

  url "https://github.com/m1tm4n404/HushScribe/releases/latest/download/HushScribe.dmg"
  name "HushScribe"
  desc "Local meeting transcription and capture for Obsidian vaults"
  homepage "https://github.com/m1tm4n404/HushScribe"

  depends_on macos: ">= :tahoe"

  app "HushScribe.app"

  zap trash: [
    "~/Library/Application Support/HushScribe",
    "~/Library/Preferences/com.drcursor.hushscribe.plist",
    "~/Documents/HushScribe",
  ]
end
