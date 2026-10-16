class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "a8e6c6d2739bb21ca8fb8ecd96426b2aee66578b059228a00939136ac96a5b35"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "72bb14830c9b4e3e675364dd6170081ff64fc7bcf1e28bff3a214fd6044f7559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "87ce13ea790da26c11e0fb1660e53c54b342266a71233797723488c68593689b"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "4b3e7bc3e0954da68a91bce019402e26c4c64da3413c1db24b377d212f54576f"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
