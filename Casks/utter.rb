cask "utter" do
  version "0.6.8"
  sha256 "bc23efed5f0c5d3fdc83d309c17153e44fa89d0b9815d063daf3592c8a33e9f0"

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
