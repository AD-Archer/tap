cask "rustysound" do
  version "0.1.81"
  sha256 "2f9d31fb9a7a308c51d1bfb8ae0a83b076bdfe4c05306063e3bb6c410092ef06"

  url "https://github.com/AD-Archer/RustySound/releases/download/v#{version}/Rustysound.dmg"
  name "RustySound"
  desc "Music streaming client for Navidrome and Subsonic servers built in Rust"
  homepage "https://github.com/AD-Archer/RustySound"

  app "Rustysound.app"

  caveats do
    <<~EOS
      RustySound is unsigned, so macOS may block it on first launch.

      If it is blocked:
        1. In Finder, right-click Rustysound.app and choose Open.
        2. Open settings > Security & Privacy > General, and click "Open Anyway" for Rustysound.
        3. Or run:
           xattr -dr com.apple.quarantine /Applications/Rustysound.app
    EOS
  end
end
