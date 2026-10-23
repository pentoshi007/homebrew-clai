class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "24c2a23216e4a626aef858adaca8a1ca39af6e2e3e5abb62a6d9e879a4a4f739"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "9595a6c51a9533b885b81f3e9d7e50b7b7d36d12b4a03c50947000ddd3b55c13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "48c7f0a465e9440269435ca583be8abfd767fb90137d88b37ec10d2ee1c15625"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "ea3d18ef71a4ed947787b481d59fc8a3e30fe0c4fb77e50ed92a73f5aedd3875"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
