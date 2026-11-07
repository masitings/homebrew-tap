cask "githawk" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "0fcbaaf61de93d1cf8a565466397fa6808eb594bae086424b8066145a4ac7780",
         intel: "009aaf7fea4e3d638472692788a08fe796a13b1a63e259bb5a4033bd8f4a95a8"

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
