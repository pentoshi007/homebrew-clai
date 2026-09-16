class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "2f8fc58bfd03b0868be91db4e2894c3f2ee6130dfe08bd8de9f405529dfd216d"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "1960ed81272e81e011a38bfb21e51326a4a17cd5736a8912820cd84ed36bc353"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "5c8a8657860a11eb6def8efc4c75d38fcb687aacc17b48fa077ea232a7e75d8e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "3c297efdc24575596aa4277cfbc37f6f6a73ffab8f0a0a1c50f2ed34bbe4b8fb"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
