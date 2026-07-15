class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.0/whop-darwin-arm64.tar.gz"
      sha256 "9743e762bb6a5734b3fb9ab5fb3ad0a8c8cf0c757125767b7984165cf6601e37"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.0/whop-darwin-x64.tar.gz"
      sha256 "2b1fc9cf5f52f4727c5d59593a60876b664cb10f2114db466720464688f26916"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.0/whop-linux-arm64.tar.gz"
      sha256 "bcbaa0ba9c4f65ab183bbd5af07aa609d78df137120dc2bd4882b0d2ffc39c9d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.0/whop-linux-x64.tar.gz"
      sha256 "8751ade8f02c9ea5a6a90688b3b52b5623e644acfa62c848080e0541b6dfddb3"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
