class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "3874f3d69e5572fab0f5e33ab1e6d88dd129ac0fc11ae134ff4baf1fee00e9a9"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "5032d364707f62d4132a74f370f7b81765155d1f0adf7d58c444d7805ad7b725"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "8673f5b6a7a3c7f428997f8ee1c0b5d2c9acf8232d9ff164662768ee26a1a80e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "11ae5d7efc679bafd33454ed05ec412ec2778f4f3e5e631f2f7a31121989f55d"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
