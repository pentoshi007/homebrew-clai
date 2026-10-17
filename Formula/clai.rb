class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "e514c7860139ac889c0e9e2168a2c0f6add275b9da41fb6135467c93ba53d206"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "ddb4661a1fa8575e43f4b5c93ed3cb430f0d30c156263bef676fba32ebb21a19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "93c2b2a9645bfe64c4f1657f691ea19c1eed64c6c8d13cb1cbea55025c02ec65"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "4109ae40eaecb6658a72323b7180d1367044fee9967e64f916c1b24b0fd2257e"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
