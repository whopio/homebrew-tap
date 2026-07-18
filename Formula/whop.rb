class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.0/whop-darwin-arm64.tar.gz"
      sha256 "d29001d546ef95982af789adf5c8d16168127faa12ff9b861728b5d809147688"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.0/whop-darwin-x64.tar.gz"
      sha256 "5747117894eb0d0659ad139e402b7184ca8f174bb7ec8f1e76167179c6cebbaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.0/whop-linux-arm64.tar.gz"
      sha256 "8502c23baf67003e935d1421a904d6bb6b24b82bfdea8e3ed5bfd566222e80ae"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.0/whop-linux-x64.tar.gz"
      sha256 "1c2d644c187a35db813e1a58b9c8773ac843d05d7be0d28e2e689ce480c9dad2"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
