class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.15.0/whop-darwin-arm64.tar.gz"
      sha256 "bc058746ee50d217ee447ece5695c29f0b9b1fbeb14299a0eb798be95bf2b40d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.15.0/whop-darwin-x64.tar.gz"
      sha256 "25fc9b5fc174af27d7b35d966981ded0376ceba788d2cf52594a0339a6fc140b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.15.0/whop-linux-arm64.tar.gz"
      sha256 "77da0f602f5844022faf369dadca661f9be3ac98ead81fcebf30b174457daf98"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.15.0/whop-linux-x64.tar.gz"
      sha256 "490f7680007a7bed5ae25c019d58d275585c5b8e68a2ee715ae93aa9c0e838df"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
