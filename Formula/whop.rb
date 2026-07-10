class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.7.0/whop-darwin-arm64.tar.gz"
      sha256 "0a721665f32a051d5f61206208a45b42db027ddcc9b564e942fbf6bd37ef1a8d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.7.0/whop-darwin-x64.tar.gz"
      sha256 "0637ca965f4f0a8f73b98099337f16497e50f08c4f64bf8259b43f48f6332b55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.7.0/whop-linux-arm64.tar.gz"
      sha256 "a52b7182b2c50427571110cec8707a07e895a8624e74f6c18d7b6e60ad0f4dc1"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.7.0/whop-linux-x64.tar.gz"
      sha256 "dc5ad85dc2eb976f512a7eafaee3b277b2e64f7f9e008dfc3c8fa3b45db45218"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
