class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.30.0/whop-darwin-arm64.tar.gz"
      sha256 "5cd93ebe36c079473eb680baaec0aeae642c3371160872f55d422a147421ef4b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.30.0/whop-darwin-x64.tar.gz"
      sha256 "f97fc4bf8128090f609306b61570936b3f173a46e662b62daa687f5be72cf68e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.30.0/whop-linux-arm64.tar.gz"
      sha256 "4a24056078e2dd1e229544605a2234f2fe9f986aa0572f7094bf6b029da4754f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.30.0/whop-linux-x64.tar.gz"
      sha256 "9fc461d0231062318b60751f04660896a2341a70fc10997af7cfa4cf34191d36"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
