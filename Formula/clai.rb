class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "5.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "de54d68ad1e4cfbb7d249b61149b697de4a7fc10c40d9f0f114d71d75368b7e5"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "3e9ed836e6be8dae873da081e8d73eb774df021bcbb4da6f2cb6e9e229802de1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "bc924282e8002cbfef4d0ae4db8de6ba9bf711434b1d9a9276062c03a566831e"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "b8d182a01ffae9cfa58948573232dcb4abe0614fd836ced0a13c9bd74f174bd6"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
