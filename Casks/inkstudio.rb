cask "inkstudio" do
  version "0.2.2"
  sha256 "1dbc6e1ddb1cf239308abd1051980be3a3d6a68871a581ae902efb65ba480190"

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
end
