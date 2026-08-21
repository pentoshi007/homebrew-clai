class Clai < Formula
  desc "Cross-platform terminal AI assistant with ask and agent modes"
  homepage "https://github.com/pentoshi007/clai"
  version "4.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-arm64"
      sha256 "150c82c0a1e425f1b84b33d989e6de2df345636bab7a3973dd3fef54a73df7fb"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-darwin-x64"
      sha256 "7659bbe4323e5e6a23b18cb13c3710d9e1f9c2ffd486cb613508c7d7717c12f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-arm64"
      sha256 "8a11150b64d71acb7fd3aac15a7445f32ca1ad928e0b29353e55b49fa1980993"
    else
      url "https://downloads.clai.aniketpandey.website/v#{version}/clai-bun-linux-x64"
      sha256 "40f3b8b103c3dc489a68ad02cdbf5e5672d6ed8c4e2e0b3cb8e426473830f7e2"
    end
  end

  def install
    bin.install Dir["clai-*"].first => "clai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clai --version")
  end
end
