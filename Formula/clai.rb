class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "f81e47e81fe614f0440d981d95c0683098e3b10ad96f12f94fd1305e7950d76f"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "d25c6aa65c6fb6dfeedf19de3c6e52387ae335a6ca1b1c8276a77c26f6a5b37d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "44febff1aa3e028ee3b336a5867b0a4be233766d4f88458b3ef7cdfb4d8b1a0c"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "232d698150027a4ff8be4dcc36a83160794f1e5946ddefdb851aac653b0f58e2"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
