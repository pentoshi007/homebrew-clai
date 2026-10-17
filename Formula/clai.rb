class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "731c246b07972a93eeccad7ac4bce45bfab6655a6fd4c590e3ab28cf0c5d121b"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "cc4bd49fba17a6212f34280c99b11af8bc3d4ce1ee3376c4aef07926a67a9c14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "fe0970ee871205c2371e1f4e1880cf40987d8042e43bdf92d85a323167a453a8"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "1bb8ee9390553a3a7e6965f9197b7d2d30b8316d2c5f4a59d34bc6a82a3d3192"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
