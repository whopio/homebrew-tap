class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.21.0/whop-darwin-arm64.tar.gz"
      sha256 "81cfd487cf02825350b8d5a01fcff104778ca7e1da54c7033d3eb312af8e0fd8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.21.0/whop-darwin-x64.tar.gz"
      sha256 "b316e52ecb707eea5b098ca67ffb63240295f52285a3a9c6a235d452b224c91f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.21.0/whop-linux-arm64.tar.gz"
      sha256 "d5093ccea1bb59a7da0ee668c90f6cb458f51b1a8ede70358be8fa8e55ed95e8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.21.0/whop-linux-x64.tar.gz"
      sha256 "b88383f0a4d020e28fb6eae335dab61a82845bfa67323bcc6456a69feac16d7c"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
