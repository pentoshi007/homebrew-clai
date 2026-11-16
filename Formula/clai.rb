class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "fe1d9771faf7a6002164305d352139c2abeaf9f793a195a7c9de998cc9edc6d7"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "b752449a60d76e7b1a8d788c45b7459ec5e803441ddf4f3163cc9a015800d977"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "ebe725cf2b2c892aee3f1f9e75305df86c467f503d310c1f4e3e4f7850e223dc"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "14ea3758ee88c4f21646b95d4972a32fb76b51657b43c177cc07df8688b28b6a"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
