class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "835260b08068f1aa3f4078233155ab38daaa4d310018e8a3dd920dcc532e3225"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "f14daa47af909e57cef9ef2da47c1ad7f6b0f0a350fd1203317f35a606d12530"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "a2a03187cb5ee4fdce7ba627debaf5a12a8c3e4502a7e89f052cde57b62e527e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "971ae89ff19da4f0fd7b8ce05422524d9b1e6ddcb88d17e25b8a3ad084df2117"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
