class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "78189f56823ddd1d38048b4525d055dc1e12aded6d24621e8f07d2a8ae21c20b"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "56ba2bea6aa2268384f2ee69ff913335ec65cf7a5b0dfd3c23455007d5e50d35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "8e533759b90a7eff16fb81e1bae4fa529bf4c0248b1e6e230998406e3aacea02"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "a0f1883e20fcb106c298d4f3c5a2e017166f4a9cef51b2f92585b99e26b6cc1a"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
