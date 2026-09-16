class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.2/whop-darwin-arm64.tar.gz"
      sha256 "044c7909ccffca747ba335b765b52eb7cc17344bb20b85f7fd2092d43daa8d0d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.2/whop-darwin-x64.tar.gz"
      sha256 "5d7204b9ef715aa95eafac91fd9ca4c0406e0796ac96ba7d7e49f3adea195379"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.2/whop-linux-arm64.tar.gz"
      sha256 "384740bf55cc4733a3de2d85005c8b95635d35ba0f021c43a4ccb0772e12af52"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.2/whop-linux-x64.tar.gz"
      sha256 "9ad34c740c60507b4106416a1430224431d6ead4d6908cd93c6ad329b4773034"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
