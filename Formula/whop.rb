class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.1/whop-darwin-arm64.tar.gz"
      sha256 "da20960f4a22bf4cfb82748d94b0696bc0c83389c901c369a9f52e247e169941"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.1/whop-darwin-x64.tar.gz"
      sha256 "3ab62836bc2b816466d1184e5b45dae588dcfdcc3aa216fb7f38dd4ebe952f2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.1/whop-linux-arm64.tar.gz"
      sha256 "b1af9b137a496caa261ee094cbb4eb6f9a65528fc5db5f1e308e4cc4b299f85b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.9.1/whop-linux-x64.tar.gz"
      sha256 "b3e0e00a526c8de1f09e110a8feb90929bde8454d9421d6dc5d9f73f23ec1e08"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
