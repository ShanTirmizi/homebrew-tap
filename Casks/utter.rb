cask "utter" do
  version "0.6.7"
  sha256 "b383221ccb0f7fbd5c8844f06602f1d09a7c46ff0a4ce474a56f312de2ab858b"

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
