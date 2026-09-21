class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "1a94c73bf6754e306a894e38c6bd58557acfe38b148d9958f4c4058af745847d"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "e2558b78f6f615ecac0c2ecb43bc58bd5d41a039a8b150fdf8ee16d8f3361d35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "09437cbcf73d7ba93c4f9ba6ce70cc4bdcbc14aaba74aa4b1dfc0ada96ddde9f"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "38ef21c802a0632474377aced1462b2c9fda8233985566d95ad7c82596fef414"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
