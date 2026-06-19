class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "1.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "752fd172cde233623c3304dbde4cb6f2e5852a05e9bf78509a1a630c6048b7fe"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "5e0d556af3bb67e3ae5376bb8ccbf6bb150148eb666940027c9b1dd4a7036d31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "7cbe44cf621c3c0e9bda4a8d4c8e81efd09455ffa66e17e8d417a0da9bca55b7"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "a3deb9c4607cdbe082218e1b08a0da8c50d9ec3a6c89f34540611ad4fe68e4ff"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
