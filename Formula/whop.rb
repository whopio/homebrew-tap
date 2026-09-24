class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.20.0/whop-darwin-arm64.tar.gz"
      sha256 "656805f43167b10b346a16f0acc489ea561e1cae8d4984fa8c2ae779be0ac842"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.20.0/whop-darwin-x64.tar.gz"
      sha256 "ddb9176e1fe5fc177a211dc28bd99b8b058ecd174325677f058ef25c0fd18fa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.20.0/whop-linux-arm64.tar.gz"
      sha256 "fb5d85f8544ab56ce9d86d3f198c43ef2c677f8a944a2318f6987d17f1b131d7"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.20.0/whop-linux-x64.tar.gz"
      sha256 "75ad815d86f041c8614dd5df9df47e2ac7b8dd103e6eaca4170de808c6e7ad05"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
