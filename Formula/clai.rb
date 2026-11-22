class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "663328073963e6ceec39aa69dc4841e43b7f054c2ff14baf6352a0ab02811f50"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "8f883f86e77870c7cd4357e35d3f61db3b8d26b0c908ebbdcea23e6a7a38b702"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "beaf9c4f9649c1626df4e6e9b51c429f7d22222e69b82b4cfbf1623eae7370a9"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "dbc779421d48e47a924be346ac7d29e6d4e40ebb3c2dd9f6f8dc5e6b41d2947f"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
