cask "neomacs" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.20"
  sha256 arm:   "e2d1b366eaae147428444e380296b5b6a9298411fe19685668896002e31449e9",
         intel: "39fe343b3155f4b87ec3d897d044b0fba35c97793d654585fd179d1da08ead5f"

  url "https://github.com/eval-exec/neomacs/releases/download/v#{version}/neomacs-#{version}-#{arch}-apple-darwin.dmg"
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
