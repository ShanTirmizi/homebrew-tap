cask "utter" do
  version "0.6.3"
  sha256 "9df8b14964b4d230ab576465b6f12f40a7925a79a8ea6e334c0f9fa83cd52d3a"

  url "https://github.com/ShanTirmizi/utter/releases/download/v#{version}/Utter-apple-silicon.dmg"
  name "Utter"
  desc "Free, private voice dictation"
  homepage "https://utter.shantirmizi.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Utter.app"

  zap trash: [
    "~/Library/Application Support/dev.utter.app",
    "~/Library/Caches/dev.utter.app",
    "~/Library/Logs/Utter",
    "~/Library/WebKit/dev.utter.app",
  ]
end
