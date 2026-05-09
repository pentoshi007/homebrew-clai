class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "9442143012d02adec50041c8a20776f2c7cd72d3faf9dc6359a0d6c9ab6444e0"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "25bd4af4a01b516257548ed2664cfe5f9e5d781abf86f8170582ba07d0f123f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "b11b6f95081ef4ac45bdcd9b2c24c2efda01b630ef8e074293af9bbb4b7b2874"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "cfbc44c8a26f62119f76e6dcb6a269c0f76df0f29ee508da24636afdb39e00aa"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
