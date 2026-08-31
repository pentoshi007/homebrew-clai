class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "bb90d946858ed2b5f5f461ef08cf36ff7d17de93048f16dc029c5671d2dfafd0"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "1bd6f76ed4d5185e7ff68dcd35a4d2e3bf55c2c37e1a1d01c5e9b4c1c8a82338"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "33e784d2d5ff1b09e8d2ff379abdecee43d44ad737039c7feee8b21a3bdddf5b"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "1364640ae2a713309a135304b27dd7814c902aa2f6a44e2f66ce4cd284df10b2"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
