cask "fieldade-home-base" do
  version "0.1"
  sha256 "ecc5b016f1e9749c9fe44334d3feb1bd501c657eb3a27c4c4da566d5ba4f1c23"

  url "https://github.com/jtembry/homebrew-fieldade/releases/download/v#{version}/FieldADE-HomeBase-#{version}.dmg"
  name "FieldADE Home Base"
  desc "Home base for the FieldADE app: runs Claude and Grok on your Mac for your phone"
  homepage "https://embry.dev"

  depends_on macos: :sonoma

  app "FieldADE Home Base.app"

  zap trash: "~/Library/Application Support/Field Agent Home Base"
end
