class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "2c24edc5d9381cf54b9aa44f1e4d7aa4f1dcf1a294bef0494cbfe368813f85b0"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "96c51e84e9a9ae781c04b51802d45d857b6ce5b4f50b2665a4daf119a777e590"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "cd42feb91279184d82925ca8e1ee8a5f3eb983179850427063a84c6a7eb98ff3"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "94f49cbb8e6fa3e54eee4bec5ffc13bfa35b5076d8f91266e0b7085762c8256a"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
