cask "fieldade-home-base" do
  version "0.1.0"
  sha256 "b7fb4e494173418ba25077502ab1352e58b8f1592609ee4b2d0ddca6647dadb3"

  url "https://downloads.embry.dev/HomeBase-#{version}.dmg"
  name "HomeBase"
  desc "Runs Claude and Grok on your Mac for the FieldADE app on your phone"
  homepage "https://embry.dev"

  depends_on macos: :sonoma

  app "HomeBase.app"

  zap trash: [
    "~/Library/Application Support/Field Agent Home Base",
    "~/Library/Preferences/dev.embry.FieldAgents.mac.plist",
  ]
end
