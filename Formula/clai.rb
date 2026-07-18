class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.8.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "a7ff75ae7c38aaf136184c2074d3bf3ae44ea91ae63b4127ef1945e8d8e80ab1"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "1d04bbcef4cf48a3b274b133fdbf9bfbebf7bc1daebab0ac8f957f182ed101c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "f0ebac1ca6e6f4b9ab05d10f32a11213ca557cb6ff85acf6c71e3ff74adbe45e"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "fbcdf21f333788f7e9fb23ced61802c3ebd95dff6da110535886b33b4f3ac3d1"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
