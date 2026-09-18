class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "d4dc2c3d1de95820f7494136e9a88bbbb510ed7a93e11c2de64e83b1d463c624"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "60cff096b2efe4ec8f357407febe5f8d159e8cc36c62de410d9d0aa42286ce80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "afb9e0ec248cf9e4747dc906bc334fbdcdf88af5b19105cf4430cc077f58ab02"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "04842695633de6e5d0369872eaf635defabd2d2f5877521a4300835d7359324f"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
