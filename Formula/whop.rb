class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.1/whop-darwin-arm64.tar.gz"
      sha256 "bf2cb5c024c53f5d3b3dd9ab3576e057ede2ac7a38f2b83b0a69af4be0119d04"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.1/whop-darwin-x64.tar.gz"
      sha256 "cb83708bc34fa0dfa73d3ca53d156ece9ba64fff1635fbf3841cf03a22bfe29c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.1/whop-linux-arm64.tar.gz"
      sha256 "84452f47587247c48101c0ad787fc28ced31d5f1ef82a9336a85ee4acca808c0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.1/whop-linux-x64.tar.gz"
      sha256 "41ad6df74833a945fe4d068b100468788fcc30e602ce37463efdff558118c008"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
