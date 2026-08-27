class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "fb1bcb140655f1f7fa87dc34b018f4fe423b0e5a5df2728cf3ab6db7653e7856"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "ec81b3c91f685dbc808c9b47f4dadf6f80acd9649a484da903808d76bfc7ab48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "16fb87ae6ab20f62238d123b40ef27291725c8d2c60f9e48a11cffd4ea8d4f5c"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "9c7ca19c67c4939a2424b75349fe47c90f407c6e96979721d2aebfa94d805c0f"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
