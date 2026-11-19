cask "inkstudio" do
  version "0.1.0"
  sha256 "a3c7b2d1ebadbc023098c04564e6e17891daa6449b1e8cea29723033d27dbfbf"

  url "https://github.com/inkcheck/inkstudio/releases/download/v#{version}/InkStudio-#{version}.dmg"
  name "InkStudio"
  desc "Desktop editor and presenter for inkpress Markdown slides"
  homepage "https://github.com/inkcheck/inkstudio"

  livecheck do
    url :url
    strategy :github_latest
  end

  # inkline draws the diagrams in slides.
  depends_on cask: "inkcheck/tap/inkline"
  depends_on macos: :ventura

  app "InkStudio.app"

  zap trash: [
    "~/Library/Application Support/InkStudio",
    "~/Library/Caches/InkStudio",
    "~/Library/WebKit/InkStudio",
  ]

  caveats <<~EOS
    Exporting PDF, PowerPoint and OpenDocument files uses an installed
    Chrome, Chromium, Edge, Brave or Vivaldi.
  EOS
end
