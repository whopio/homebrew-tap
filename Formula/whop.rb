class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.32.0/whop-darwin-arm64.tar.gz"
      sha256 "5b0bd9322f0b1e3aa3bf59bc7b27529622a0a252fa9eafbbe8567f6317826d6b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.32.0/whop-darwin-x64.tar.gz"
      sha256 "0fef40f088860729c4d133138e5cb57942aeae413803eee60fc8690f82056bfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.32.0/whop-linux-arm64.tar.gz"
      sha256 "ada26bad2f4a23ae27c2c827e42d7ebc9d6dc8acbf0fa313b2a21c9b3e7d0ca8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.32.0/whop-linux-x64.tar.gz"
      sha256 "643252d04d5ec0185d4e7680cee65b858f2447c9497cebba3242cb0e22da1ede"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
