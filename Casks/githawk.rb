cask "githawk" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "cb49f3257f1f0bee9b83680fa6e8e05d7ac5d27aa865fe3b20a43ea279e277c4",
         intel: "eda5028295f63541c125056eddceaf09fa2ed5ebfe473a04c551fd482939f813"

  url "https://github.com/masitings/githawk/releases/download/v#{version}/GitHawk_#{version}_#{arch}.dmg"
  name "GitHawk"
  desc "Fast, local-first Git client"
  homepage "https://github.com/masitings/githawk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "GitHawk.app"

  zap trash: [
    "~/Library/Application Support/app.githawk.desktop",
    "~/Library/Caches/app.githawk.desktop",
    "~/Library/Preferences/app.githawk.desktop.plist",
    "~/Library/Saved Application State/app.githawk.desktop.savedState",
    "~/Library/WebKit/app.githawk.desktop",
  ]
end
