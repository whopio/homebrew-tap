class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.18.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.3/whop-darwin-arm64.tar.gz"
      sha256 "f05fa79fa7215994dafee6897047c63ef195671f2a669a3aefa3cd7ed477fe2d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.3/whop-darwin-x64.tar.gz"
      sha256 "70cb17da7fd9fe9d51596b18b6a08281a5eedfb19e3b563d5b5d5cdc40ae793a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.3/whop-linux-arm64.tar.gz"
      sha256 "363211350788c2f1994d948dae80685092755f29179cfdc4a7327ec2d3c0a290"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.3/whop-linux-x64.tar.gz"
      sha256 "0abe2ebfcd7d5c6557f05f8398e434f5d2d119155aad9662cef471d88bd15f18"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
