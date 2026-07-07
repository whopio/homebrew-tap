class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.1.0/whop-darwin-arm64.tar.gz"
      sha256 "ef9a524b2ecc6694cbff586b88b11bbd6781b68b6bef0f7cb3569c80a2dac249"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.1.0/whop-darwin-x64.tar.gz"
      sha256 "48d1156c6cbc29efef4b4a95b2412b2a20f9674efca6fd57f755f9fb01d0115a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.1.0/whop-linux-arm64.tar.gz"
      sha256 "40905d3c61069bb7c2b2b0c76ae6c24dd7412b3d3613ec00aa2d57459c85af14"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.1.0/whop-linux-x64.tar.gz"
      sha256 "fad322c2269c1ffd36a2b883e2c767e0137d7ab724ca5cf8bb231a07acade331"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
