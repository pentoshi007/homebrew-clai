class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "a30ec0bed4cc5a69b7c3c7587fdffca831e6cdcb7f5834f59979fee6dc78dae6"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "7bcb0521fa4fdd4e4025bf8867c3d55bb0adf60643e0d4a41ed0231bfbbaf595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "a6fbc06d1fde5003e6b06bd53dd0eb60dab2e1efc53ae9e259fd1a686d327f72"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "858b04d4440e8c729aea35846dd7178610b565110bd8261eda8539020cc96784"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
