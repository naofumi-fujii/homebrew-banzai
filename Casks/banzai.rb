cask "banzai" do
  version "0.9.0"
  sha256 "df5bb5d3c22b11165965a59014ba2f295986c141b36b10b3dc8ffd040a047c86"

  url "https://github.com/naofumi-fujii/banzai/releases/download/v#{version}/Banzai-v#{version}.zip"
  name "Banzai"
  desc "macOS menu bar clipboard history monitor"
  homepage "https://github.com/naofumi-fujii/banzai"

  app "Banzai.app"

  zap trash: [
    "~/Library/Application Support/banzai",
  ]
end
