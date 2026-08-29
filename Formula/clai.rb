class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "955e51088ba870a97d029477da17f7094a9218450ad47698a12ed6a1b5dbc5d7"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "2d576a38aecc4b3e7f152071c8ff1f3c14b8d0b0106c78810c5fb292c954fe45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "11f2d32f7264723d131b7ef381d6060c229ab462e9b85f7457b1a6361b85c54e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "8f8d793bb63b5b5bcd1c5c181fe1af6a14f1df7d8939eeb650e3e243f4593307"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
