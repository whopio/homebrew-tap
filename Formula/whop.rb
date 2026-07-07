class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.2.0/whop-darwin-arm64.tar.gz"
      sha256 "74113727ef314e30b745e5995e330986f0f21683dc11e290e20572121f70ecc1"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.2.0/whop-darwin-x64.tar.gz"
      sha256 "f18e5f866e00d39c7bd3e4a8600ec3c0dd1f33e53823c348ce60bdbb6b0ef483"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.2.0/whop-linux-arm64.tar.gz"
      sha256 "707e99d56c48d72dc9b14bd1b6afa3a258b86a5e2f03073c7f1feb7598b9a90c"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.2.0/whop-linux-x64.tar.gz"
      sha256 "fefaf4c947dda1a221e82fb6aeb8d56f0022683e0a25a5d248966cf99f1c732f"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
