class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.25.0/whop-darwin-arm64.tar.gz"
      sha256 "b72be93be2c65ad7094a6cceb230321d9d897255ee78c06ffa36adee20e40bb0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.25.0/whop-darwin-x64.tar.gz"
      sha256 "864415c261080b43010ae6904a3e957091741b5e5eb260f4a915c42ea10ceb97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.25.0/whop-linux-arm64.tar.gz"
      sha256 "3e92559a84f78d3da3edfd7a62375c9f8d814bcb5d8549f739705bf88e0944d2"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.25.0/whop-linux-x64.tar.gz"
      sha256 "e99bc97e7e44c4c7368137eb834acea23baa2d04b3c70314000c6e78ee875290"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
