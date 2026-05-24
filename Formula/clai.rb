class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "76573a07aef3eae8720a1d9c69518566bdbc1cbd4178c05d885dee3b59377f03"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "be4fac540b2de6e445b3b5f322ad4e02dd56b171ae1ef8bfd51efaa62f8e455f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "1719885ddf3034c4be1029bed55027c8d19b2ad002a92c5e4271ff74fbd8c361"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "87e80a4ea0ccf5d8645e070c099c3e1e759bb238e9d3c2d4422fcad892a38b1c"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
