class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "7e41ba3a97dc5895cc26c8dafbdf0ce21115f6c94234ade18f87f0c70b6478dc"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "da9a15290a5c660ce2e1abc5ffed39904f551c72cf2785f5215a3489d2443812"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "7329089e1d8657e6c844fca390669dd8594f056a5938dbf97a52ad1201f3e35f"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "c5dcfded8ba91419b374a227cc79a7f59032eba81de6f392ab81f18cbb3803b1"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
