class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "41091e7a752ff1c2bb783f2cad1de5655aecda9d39f30ce38be87f3d48c1d4dc"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "a4573c7addea1ce8f28e52fc30433f21efbc9c8e0e5eeff11d2d4b9ac7e71d07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "b5a1eac8fa21ad809af2fbcc3b9b53a9e9ad8edc05bcc143b4ee98f16a38859c"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "d3fbabd1ddfc868c72466b6b9df73b8bb9d5bc18623d6279b66ca8cd8da4c463"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
