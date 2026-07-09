class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.5.0/whop-darwin-arm64.tar.gz"
      sha256 "084c171834bf141ee68f73fb90dd357ec651e0644156bb929df32964e7cc7da9"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.5.0/whop-darwin-x64.tar.gz"
      sha256 "46968cd50a5241f303529efdbc9b47a457ffc8b5d6d090da5cadaa2d3674ca92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.5.0/whop-linux-arm64.tar.gz"
      sha256 "9239a69c4f1630ef5a0d23fc6056a02b32556b2e6636db176678dc26ee6d6974"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.5.0/whop-linux-x64.tar.gz"
      sha256 "e3466e5c3a808c346f10dba339973958db3c0c2961a3f4128c23d307267bf309"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
