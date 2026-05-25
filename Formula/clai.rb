class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "70e7248309bdffa5e85f5d8696ed45e6aa879e5087aea2f4f0dfb8ff0b212fea"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "c0c9830f0c0be4e085dee89f6a73a6488f4306bc1dfa5855f736011d52176051"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "560fc42c0f76048970a64c55be3b1e8ee06d6fe4f68cfb3693b818b8a49ddb0c"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "2a84c98640289fd06d67baea468beb3c32323f5bc5a889bbc69fc0f1601d3075"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
