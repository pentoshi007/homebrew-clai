class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "2.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "6ea5e98d60c0e8d9121e37d503be282fd22c1a5ea931a050834f1ce74b4812a1"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "ca064dfecb42c22e3528dc0f50e01c81d0cb9fdcb437d0581fecfa6a3ae4f6f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "4340c974c779adebc86ba259ed537fabff9a3d4c7640e0a4129a0a6f90b1e8c0"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "e1d8310aa45df5a9aaf250a3fec5c9a1219efb3433cc6ed9807a6d7edbfff6eb"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
