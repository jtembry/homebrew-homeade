cask "fieldade-home-base" do
  version "0.2.0"
  sha256 "07c690091a62b5155e187783d61e6be074c49deca7d3376f702cddca68a74908"

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
