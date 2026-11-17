cask "homeade" do
  version "0.4.0"
  sha256 "7a1c026ffdab2a3ee3f3fad6b22b177a520a023cbc2931f93c2115f351a3125c"

  url "https://downloads.embry.dev/HomeADE-#{version}.dmg"
  name "HomeADE"
  desc "Runs Claude and Grok on your Mac for the FieldADE app on your phone"
  homepage "https://embry.dev"

  depends_on macos: :sonoma

  app "HomeADE.app"

  zap trash: [
    "~/Library/Application Support/Field Agent Home Base",
    "~/Library/Preferences/dev.embry.FieldAgents.mac.plist",
  ]
end
