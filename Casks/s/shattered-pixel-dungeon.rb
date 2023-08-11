cask "shattered-pixel-dungeon" do
  name "Shattered Pixel Dungeon"
  desc "Shattered Pixel Dungeon is an open-source traditional roguelike dungeon crawler with randomized levels and enemies, and hundreds of items to collect and use. Its based on the source code of Pixel Dungeon, by Watabou."
  homepage "https://shatteredpixel.com/shatteredpd"

  version "2.1.4"
  sha256 "1c4611f2804eefe80e9f8a6a69ea03b67e462a848c3504146379c313b3635b4d"

  url "https://github.com/00-Evan/shattered-pixel-dungeon/releases/download/v#{version}/ShatteredPD-v#{version}-macOS.zip",
    verified: "https://github.com/00-Evan/shattered-pixel-dungeon"

  auto_updates true

  livecheck do
    url :stable
  end

  app "Shattered Pixel Dungeon.app"

  zap trash: [
    "~/Library/Application Support/Shattered Pixel Dungeon",
    "~/Library/Saved Application State/com.shatteredpixel.shatteredpixeldungeon.apple.savedState"
  ]
end
