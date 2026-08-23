class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "d976f7cfaf08688a6a6374efe34d232b293eee7e15565595941fcd1f05ae6679"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "85837072eee305b1d8345e48b59dd5876a1d1bd5ed3b4638fa52bf8ff03ca207"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "c874a62dad64ceac2bcd80dd8aadb54d17b6fa94ffdefddcfde7aa96a71ec914"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "780f92acc3bf7ee6e38528ba4d175684f96180f998151f092d75c2cdbfcb5759"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
