class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.6.0/whop-darwin-arm64.tar.gz"
      sha256 "b6911ab9d93b7dbd30029457bca34a4920a3fa16cfd8d120923ae71cf4d107d4"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.6.0/whop-darwin-x64.tar.gz"
      sha256 "586ad71a7ac39c70e7b277642e710b47e300ca6dceccb333e49764032f802275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.6.0/whop-linux-arm64.tar.gz"
      sha256 "be5417469351aa168223ad641df15042c5c17077eeb2d1cc02737e5ef6f02f1b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.6.0/whop-linux-x64.tar.gz"
      sha256 "45ccb77a8d435f121a54e9951a7fa82ff381a4506e0a63ff74320f1e733074a4"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
