class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "9e9de3e93f8600d2743de43986ab6318f517a5b599850cff6a60a99b190e4724"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "3c9b3febb062b153c9ef5c229d9aadccd7e19c1c66ced36d1b3f673d789a813c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "339810a19a47785ced76eb6e5cfeb660f5aa7465a1e788e9a7294b7ef62bc3f3"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "b62498a55cd19c6b12a8044a6c31ea22f931464c77b99b552049dd7aeeb28b38"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
