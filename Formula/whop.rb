class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.2/whop-darwin-arm64.tar.gz"
      sha256 "68d8038d3c6bb0329b352ad1123df2a10d40081f41e8f7f33725c129ad2d44e5"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.2/whop-darwin-x64.tar.gz"
      sha256 "7595114247d71c3c39abb9226213ae52d19ba15caf5a5f96f68ece555b6ab997"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.2/whop-linux-arm64.tar.gz"
      sha256 "4a2be149ca9f5b4fbee495a84f6d17058dd858826f9498a9192fc0c1e5216bc8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.2/whop-linux-x64.tar.gz"
      sha256 "706b98fd505a77c006c045b6beb5d1abe648e4aaf650b46a2a07f9c81ec5bb4b"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
