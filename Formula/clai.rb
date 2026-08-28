class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "da779df5377f219146711b387c939c71a9347f8ac7f5cd1e8ec269c5ec6ca858"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "8cdb2b33f3aca5bc34ced2c3a60bafda09bef03c6ab86aae7f4f193a4420677b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "731089e76585173e581166285988a6d06022d347f5d698e9ab9d07990d1f8053"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "6a49c26f4a1ca2435be160eba40e1f0d33b15e4da60d1a9c9c95a2daf80eddfc"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
