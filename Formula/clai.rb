class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "b484d6ef97f40226f6cd333e6233ce49b5e53f4155d5fd402e0da25ae3b63c25"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "5217d101211b28dbad41c3750ef143a9a0f18582962adf1573cf9182460d5d5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "c034e52b9ab38523f081d70e2d9127e20b0badf6cc91a639034d714c419192b6"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "af8186707da77a16efb017e6f3a1301b21c409fb2fd6c11b791830cfa947b3b3"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
