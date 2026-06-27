class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "2.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "71427e00633980a9fad88eca06265deb545107f5822a9170756feeb70c35b85d"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "652ca3494625db448fb1bbc28156ed955a8ad3e07770b8ea6535f40dca03868c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "861a132e0d8346018ea30934ef730a868ecbb4eeab2ee6c1badf60e1bc982a8f"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "a82e17be5e70f354aa446ede8fe58a6ab872f3edee32e63e7b4da434f9ac1aa9"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
