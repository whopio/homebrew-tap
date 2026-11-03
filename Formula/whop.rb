class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.34.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.1/whop-darwin-arm64.tar.gz"
      sha256 "560c868bd42f3fa72e0c3ae93eb41a1d23f98c5ecea06bb47871141a6b5d0bfa"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.1/whop-darwin-x64.tar.gz"
      sha256 "920e70fdefac8ca61a04fbb6845b74e3916b78ad6a0f0481ddab40725b082118"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.1/whop-linux-arm64.tar.gz"
      sha256 "a5cb867bbbf4ec022ea7ea9c2ed8fbc7b00c1efe4c814333de3b5ea8ce335ea2"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.1/whop-linux-x64.tar.gz"
      sha256 "d048d788e6e58bea12b95a106c17b3efd7f37723fe172b59275dd39cfa843d34"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
