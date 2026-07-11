cask "devsweep" do
  version "0.1"
  sha256 "6303962cbf832b441826e2e83a66a2a5e8dee10b7d85970924bd2a218a91493b"

  url "https://github.com/jbaker00/DevSweep-macOS/releases/download/v#{version}/DevSweep-#{version}.dmg"
  name "DevSweep"
  desc "Developer-focused disk cleaner"
  homepage "https://github.com/jbaker00/DevSweep-macOS"

  depends_on macos: :sonoma

  app "DevSweep.app"

  zap trash: [
    "~/Library/Preferences/com.jbaker.DevSweep.plist",
  ]
end
