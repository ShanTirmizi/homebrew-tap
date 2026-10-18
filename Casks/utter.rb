cask "utter" do
  version "0.6.0"
  sha256 "7d952846caed490acdaff59e68609d8cbc9b36fe8c98ff026f4e8a599766fc4c"

  url "https://github.com/ShanTirmizi/utter/releases/download/v#{version}/Utter-apple-silicon.dmg"
  name "Utter"
  desc "Free, private voice dictation"
  homepage "https://utter.shantirmizi.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
