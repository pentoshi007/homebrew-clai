class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "a70bcb77fae458c35ebb84b99bb973e97b1de33022280e8a0820ad1b5e721bf5"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "98500bfd849a71548a9ff0729a5431aea55354b20910a472f32f02ef4e79eb31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "5885978e2c79f0bd0c93fd60a5a3830713fbe7e6dcd5895244bfed090c7f2857"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "94bddd6e79a9d699ba8d2bd4d08746eada12ebc00417f72cb87613f23f9d1fad"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
