cask "banzai" do
  version "1.1.0"
  sha256 "5e95380382ac84824227daa42ff95ea9039dea820fec5c94d05f0733726ac67c"

  url "https://github.com/naofumi-fujii/banzai/releases/download/v#{version}/Banzai-v#{version}.zip"
  name "Banzai"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/banzai"

  app "Banzai.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Banzai.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/banzai",
  ]
end
