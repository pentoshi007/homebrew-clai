class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "c8bd61ddfc3c46acfd32244937d1242e712eff512e5ba0a41acf9a00a52445b1"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "64fe022f4f0a0cacd57a78db84d0a54d5d6cb3ef0d6386fa351fcb5c24a24e9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "ed42c77f8ebf4f872b1f5f11f1557eea76f350d9af8b92225c9adba8d3adbf55"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "dceb7661192956bfe307ffe212d2d203e4c9e43bb4a76c9a3f7d1de8808c29a0"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
