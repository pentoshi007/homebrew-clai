class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "47abc11e0bdea358cfd2c042f594fc85c1d0637cda8a476af9de3a4687c236de"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "22fb0f0031869458b52e117d84dbe7e209cc7a73f3d119c0e4df8db8c7d9d21e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "18d8d3bb0bdf76eddce5a1ebb26ee535dc0bc8812c80feb3f260c86eabe3d2f3"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "1e7a793c0c3b31596f8e8b3bfa0c9c4eefc4ef5c2a9e598dd7a760e9c50a3a6a"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
