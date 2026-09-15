class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "a0d40c675c156b7640ee08957a6a0c246e6e37c6ae3b449238a7d2788c620f6a"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "b35d123c79aed9d797d60adc0a1714c22c7a46e37913a189ec4f1b67d06702ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "de0d82467585e4235389075d7513a7c95998a4386764408b57f5af8802c5cc94"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "93cc191ce63b697b21974780b9c659ad70bd632556ffe7af7624382f82e14a4d"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
