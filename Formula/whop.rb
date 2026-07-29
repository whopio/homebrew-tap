class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.0/whop-darwin-arm64.tar.gz"
      sha256 "1ff887a1a320b4105f417b00f30e0f545e0e5db50455f710f5e444654b5ab7c8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.0/whop-darwin-x64.tar.gz"
      sha256 "8a9795234dc60f3919c6368aa0f4d809cfdb3017ca381f761dea5da84ce16261"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.0/whop-linux-arm64.tar.gz"
      sha256 "e049c47567d149bbd557db92b7d569e4127571bb97787fcf2a96e61ac174d2b3"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.0/whop-linux-x64.tar.gz"
      sha256 "39e0647fef8b5109a7797d62fcc27f67776c5fbb299da6e80818ec4af1241928"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
