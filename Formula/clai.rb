class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.11.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "9ea8d6ce2ca956ebc7a3e9d18ff834f227fb35cbc0d2ee7e444b5096714c5669"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "8e80572047c8b3eed10480e8344d789df30a1ee3e435bc69f16b96cc81ec6e95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "52b0ecf8eb830e1f194d8fb6cfcf027a68e40ff2ea90e0db38725228e847a1c8"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "d7ff315e0dacad483ba7fb47a6e49ed6d488be911fa6c038e50abe905318e999"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
