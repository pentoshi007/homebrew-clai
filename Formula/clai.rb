class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "9e23dee1657bcc528ba5ab4fdcd56fdf83c97adc8f78b292cb5d4862357ec7c6"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "9cc1201dfc7282557fd75c706def5cbe2a66fc47e40156ef41b304e891a58cf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "9cc0ae9eff15e7b875352cb7914eb2471bf9b0895a16bccc180d04ea48e93c22"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "eeca6212a6b3fff6d5398c2f31b6bbe388051db6c54c67d50fdf4f678bf595ff"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
