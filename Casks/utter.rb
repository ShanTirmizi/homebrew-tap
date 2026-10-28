cask "utter" do
  version "0.6.4"
  sha256 "e4972e0a6f221d9005faa3d15a02f857ce78d168b907f3303137c48b4306cca9"

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
