cask "inkstudio" do
  version "0.2.0"
  sha256 "0043c8a6d39bdd39d0561b0ab9bc98eda1ddffdfdecb0d7ab419527b5613f340"

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
