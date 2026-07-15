class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.2/whop-darwin-arm64.tar.gz"
      sha256 "cc591d46c0f9d7afa60660733170033b93b069ddecb2a937f77ffbc416512c1a"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.2/whop-darwin-x64.tar.gz"
      sha256 "d6a2c43afa0c81190ddea34ac3e103bb378a3dbbcd8ed2ddaa21fb4975b49740"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.2/whop-linux-arm64.tar.gz"
      sha256 "88ec821306c4e4bc09770d4bd4d531173f1a7d596cec65ba6b6b239bdc8308df"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.2/whop-linux-x64.tar.gz"
      sha256 "aae5d47796ac5cb91a2fd2ddaa3e3a37c422351d0516e7bb5e484e6ef6ef1ddc"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
