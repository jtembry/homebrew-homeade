cask "homeade" do
  version "0.3.0"
  sha256 "2b5e1325406152b38a89ba2aaa2f5be8b85b4e72d288e782433b7e599ac4440b"

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
