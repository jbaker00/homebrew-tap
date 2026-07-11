cask "devsweep" do
  version "0.1"
  sha256 "SHA256_PLACEHOLDER"

  url "https://github.com/jbaker00/DevSweep-macOS/releases/download/v#{version}/DevSweep-#{version}.dmg"
  name "DevSweep"
  desc "Developer-focused disk cleaner"
  homepage "https://github.com/jbaker00/DevSweep-macOS"

  depends_on macos: ">= :sonoma"

  app "DevSweep.app"

  zap trash: [
    "~/Library/Preferences/com.jbaker.DevSweep.plist",
  ]
end
