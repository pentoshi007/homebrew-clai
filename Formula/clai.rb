class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.8.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "4d5ff6a175c6d6f4ae011ac5e4c6c6885b3bbea389cc9cf4090ee9ae2c0327c3"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "63f4203e047ce97f1bf0a2489d84869fca0b8bf65911151a727b377e53b02d19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "82456b3316130ea3e7bda5cb976a5f29ac4070cb2c5ad8ebeb4d8915f1ee8e23"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "966fc6835eda5d41c29628ddd43ef37cb2bc225cc4021cc8642789bd87d7058d"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
