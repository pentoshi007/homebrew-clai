class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "b79652c502bf82258db3f21f59fba38400acfd506eab0fcfa48dfedae24a8e72"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "d38ac1cd8a1075c782c81e97ec17b0f3852d353fee80db2273a8a025e7231175"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "5efd6b71b0ab860bf3042a8e30a9f9dd6abf096ff737f4802b69cc9e69fc15d0"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "11b5187eb9a02b1a7cff25c09d8308ae27acb927c8ff097efbefe4fb141f0a61"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
