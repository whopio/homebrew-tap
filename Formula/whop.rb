class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.24.0/whop-darwin-arm64.tar.gz"
      sha256 "3994ec165018cb9f0ec050505622175c2e98687bacd54094212e3431c632fdab"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.24.0/whop-darwin-x64.tar.gz"
      sha256 "c7517c15f35c47888e72e5bdd58b25249b0a832ad210ca306248c90121ec4bbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.24.0/whop-linux-arm64.tar.gz"
      sha256 "078ed113f96a8deee74a853d6a59ffb1ca35d1d3cd3c4b8c2d78eac7a736ab14"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.24.0/whop-linux-x64.tar.gz"
      sha256 "5a01ae28d733affee7d20a74ed56154459dc441e7682bd69f6b029e5895eddac"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
