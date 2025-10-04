cask "voice-typing-studio" do
  version "1.1.1"
  sha256 "0e1b90e0866eefacc5b74dfedc09bac96fc7ab922671a1eed8b6c3b1a57ef056"

  url "https://github.com/j05u3/VTS/releases/download/v1.1.1/VTS-#{version}-Universal.dmg"
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
