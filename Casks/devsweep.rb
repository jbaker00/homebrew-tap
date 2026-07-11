cask "devsweep" do
  version "0.2"
  sha256 "efa81f07fdaf3756756cbe441aa6b7d3fad554f49474b02f14c11473db7933fa"

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
