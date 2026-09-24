class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.19.0/whop-darwin-arm64.tar.gz"
      sha256 "62744f132b5bd037249d536f7161bbdf2a922c5548e90a056b77f5ea4cba93da"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.19.0/whop-darwin-x64.tar.gz"
      sha256 "580fb02e6ff245537f4671d285f28d037c78dafb4e4a98ba6407ae0414af0504"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.19.0/whop-linux-arm64.tar.gz"
      sha256 "97f8eafe6e14e0e6de883c8d1d12226bd114be46bca25b4cef56d4b24aff00fa"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.19.0/whop-linux-x64.tar.gz"
      sha256 "ffffc58f5d8c19be4ee1a2e790a7d76af3ea6bc3446960f04935093e324a6514"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
