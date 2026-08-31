class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "11ab40395f8ba0683adb9f53ba80bfd194ef84b364c48c903c7f8d630f5751a2"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "e8ceadac4e886ba073a0adc777465e56a13bfe6e7d82c83cada3b092e90b1d94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "4d3a10a5fbeb8cc8b53f69595fb19c4ed5ea17ca159c54ff844d32eaf4e24c3d"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "883a80ea41c8f3185e1bf7d65bb1a5148bf84e7ea6d7ea99d51f245fc3de3c13"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
