class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "0f0d723ba9e25a03ae9ef604472622c923f3f61a40f0f718e12687bb522b1e34"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "122d484695e414989f00e454a2597cd61f4ee2def5a93a49e6f7e9e64f46a224"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "7bd7724f53b2c0e7a2925afb8c66e2c5f2b2f547aa1938be66cd512dfd566620"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "4ef1018fa362ba5e20e298ca53ae19c7e62fad1ffddd7c6f99f6b70b616c4ede"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
