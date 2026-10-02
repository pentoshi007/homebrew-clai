class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "c4f96f557e495e1740d17e0911032077a9fb3b8c35e34f1ef906718b1b32158e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "f1eddd32f0cde366a480758d3e0987d9cd2b79629d82991eba8510b36ee36236"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "6dba60b463eccaae33bd21d6d32bd4aa8e5d9d5ae349a64ad9db3d653bdcf560"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "9b174d7a8ff2ec1c506f8ffa4983f029625fbcd12a26e567d5bcc978ab9d6b04"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
