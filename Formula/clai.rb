class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "c0d7a441650d23d8ae600ddcd5ab425b3ca5ba28aa579d00bc38785556331db3"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "81b7b5eb7f108039e014ef5d2d5a5506ead4e35e980ccc69a3d8ec4a1a04ea03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "624453612ca4f8a6e9732a4997ebf3c97e9105e9873c4f1a2ebe9ebf5c8ab917"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "933fac483094d747feb5da7c2d33ae276aebd87c86ff99acb6c05ea0104271fe"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
