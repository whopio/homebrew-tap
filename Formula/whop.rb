class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.3/whop-darwin-arm64.tar.gz"
      sha256 "2ee565e3cd290443cefc154ea814e86ccd81d253c9486978c984f9df9d38444f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.3/whop-darwin-x64.tar.gz"
      sha256 "9ad128df8595e6edd26a7e560cab3508cc9d91558764378bc1156a0cdc2609ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.3/whop-linux-arm64.tar.gz"
      sha256 "647bd3cd5dd63863ab695912f6d85481f3f51f371e550f40ef4350868b8ab610"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.3/whop-linux-x64.tar.gz"
      sha256 "16a0bbb0582e58ef84caaa597de862e96b6a4b2c3d71bfe4a40d4a6948d87fb5"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
