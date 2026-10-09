class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "9e910d43fb3e4b212efd7e7285077c7b967e17ba36bfacf11d5d01f323d540d7"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "e2154e6136aae55f6e66326b4b77977ec75d9c196b452f7c281af6af3082bbe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "42a18249026c95b95475de8b836d946b5d4edac3cd0ef16bb836c8fdd0fabe06"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "0eb543e63aaadedcf6abd77cf85ce959b0a2c88dd57e7d51c1fdaafa5f09a9f7"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
