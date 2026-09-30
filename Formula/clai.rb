class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "2db9987a4866348cfbedb0130aac94b8fcc799aaecb0a62d01a84acbfad0a481"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "52e5c46fe7c758c8032f92ec764aa3fa956e9cb4adf02bdbe40e5fd15dc605e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "e63e2d16b6676038320c05ed5925d35197c6b80a079d1e72ce55b4c50b68244d"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "cbf1ef7a5101c29c8127c60971ce3e9e167c30550c0580b94c71f50d974f6cc2"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
