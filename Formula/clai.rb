class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.11.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "61d5fbd68c74dd52d82756de935ac81d885572ebfd15bc7249e3b7e7e2c16945"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "1bd0baf6dc6c0fa7d7a06505f7fa1f323b31044eb3a23aa1c153a60d895e8a05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "190dba7f3dc6f061b5f02ab155773c42cbb0d40ddfe774a8b57964e6bbceeb66"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "a711e70a3637bac84e0fce7df41d1622966479092d15b7ab0eb087eccdd55648"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
