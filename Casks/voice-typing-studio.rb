cask "voice-typing-studio" do
  version "1.1.2"
  sha256 "39cfad51f5a7c121369c303abf52f5069b4b9c1fa54217257ffa0273e3289144"

  url "https://github.com/j05u3/VTS/releases/download/v1.1.2/VTS-#{version}-Universal.dmg"
  name "VTS"
  name "Voice Typing Studio"
  desc "Open-source macOS dictation replacement with AI-powered transcription"
  homepage "https://github.com/j05u3/VTS"

  livecheck do
    url "https://github.com/j05u3/VTS/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "VTS.app"

  zap trash: [
    "~/Library/Preferences/com.voicetypestudio.app.plist",
    "~/Library/Caches/com.voicetypestudio.app",
    "~/Library/Application Support/VTS",
    "~/Library/Saved Application State/com.voicetypestudio.app.savedState",
  ]
end
