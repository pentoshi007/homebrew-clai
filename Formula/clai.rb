class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "f48b9dd882173380b8fa3ca829a2198faa31ac3fcc8ef698fcd2d8d1c1aa1419"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "8cfc745adabae99756c6d34cec3bbcb4a9837abdbf26310a545aa89a9f7d74ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "ffb7430e9ee44c905acf0b885aa4da965407b346f7f09fcde28d76dc7ea14147"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "6cfc7defac711db5e6b8eb385d98e5190a3868ea682a97d793802f42f03cebdc"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
