class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.8.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "86f5a10cc336f14bba6eb6dc3cdfc4ca24aa9ea0a07065e884ae670a61c0e2d6"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "9ad7bb525c1a57605fec80c4b9bde04dfcb3a224b95e9a14fa877b49eae9f884"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "4ba7ec5289430c02276fc36989955358e9744347c9df9d53c4f166a9eb077367"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "ff54d062ef3de71e6b4e7b9bca110f12bb96e34fc574b0d643ff85697536ad5c"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
