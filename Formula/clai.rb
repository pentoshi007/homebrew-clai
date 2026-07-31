class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "3.11.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-arm64"
      sha256 "a9d0a8a73b7d24d57806b67ad3919a20bef3d8a7624a799e8d37b0c91cf945fb"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-darwin-x64"
      sha256 "5cedc3c153dbe3028ffdb94b996e6b7f53e12e33393c28e1a78db6baa598196f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-arm64"
      sha256 "8360ec7fcb0c2fa1cb90bfcc2bf26a1e2680cc7b73e86a4207f37fc97625de9f"
    else
      url "https://github.com/pentoshi007/clai/releases/download/v#{version}/clai-bun-linux-x64"
      sha256 "b84dfcdfce11d35823f099a35a367f4e703305cf5a8312918208875c2741978c"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
