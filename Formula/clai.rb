class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.14.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "7cdb9ed189c95ed3c5d986a2e4dd41075cdadfed06638e4c2523c41edc9cadd2"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "2e5aadc76be7a48201b62dfe063aac919823c95a8e34968efe1d2ce7d2f4154a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "78f13d05469a97ba61911689114bc21e4a2f3a7ac1cc145130c064369a15afc1"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "e655650f8f9db79e9fac9de6350e371c6bac69d500a71aeb1a02eb24dbea3b91"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
