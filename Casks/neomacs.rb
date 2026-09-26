cask "neomacs" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.19"
  sha256 arm:   "33ed07e4eebd1cd4ec4df5689fc6930b2029f2cfb545cc1ded496266197eec8a",
         intel: "b2f616c2f1a9cd6d0c90fe1889a70066746f4cd7f5171dad4a54c319ddb942a4"

  url "https://github.com/eval-exec/neomacs/releases/download/v#{version}/neomacs-#{version}-#{arch}-apple-darwin.dmg",
      verified: "github.com/eval-exec/neomacs/"
  name "Neomacs"
  desc "Emacs-compatible text editor with a GPU-accelerated renderer"
  homepage "https://github.com/eval-exec/neomacs"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "neomacs.app"
  binary "#{appdir}/neomacs.app/Contents/MacOS/neomacs"
  binary "#{appdir}/neomacs.app/Contents/MacOS/neomacsclient"

  zap trash: [
    "~/Library/Preferences/org.neomacs.plist",
    "~/Library/Saved Application State/org.neomacs.savedState",
  ]
end
