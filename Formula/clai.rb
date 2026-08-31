class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "d0f5f8146fe4b8769e7a396147075060d630a9de5823a25e885987fdf7ea969f"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "9bdf9016a5645acd0169b7ba75fe1849534ed7127fc8e6171fd65ee6eb53237b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "5b1e58bbfc6ff630074f9ed66d6ff7ca8f68de424be3a01109f7685c7ba3086a"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "3bc3a1670d8454bc1694f515cfe4747530834e6bc1cfd7da222bcbd6d64fdbea"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
