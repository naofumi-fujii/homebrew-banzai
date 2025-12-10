cask "banzai" do
  version "1.2.5"
  sha256 "2102b87d863c2e3fccfd8c253bc7a9baebd503e2948a2d965e392e73e756bfdb"

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
