cask "banzai" do
  version "0.8.0"
  sha256 "c23e892b512f396ea4180b008d111f82f80a7b603eb3ed62d9ac42ff4cdd3fe4"

  url "https://github.com/naofumi-fujii/banzai/releases/download/v#{version}/Banzai-v#{version}.zip"
  name "Banzai"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/banzai"

  app "Banzai.app"

  zap trash: [
    "~/Library/Application Support/banzai",
  ]
end
