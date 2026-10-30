class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.31.0/whop-darwin-arm64.tar.gz"
      sha256 "080558651abd13a23442a977a0907d491e225442dfb8b5709816bb3a396b7d80"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.31.0/whop-darwin-x64.tar.gz"
      sha256 "c894ee6438387e31db6c94dd819704445eb46db81806d73a59010dd3b755feaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.31.0/whop-linux-arm64.tar.gz"
      sha256 "a713d1909a17c7bfb48d3205b9d90ee55069f7b425e0d956c6795c54e9fd0b19"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.31.0/whop-linux-x64.tar.gz"
      sha256 "19e5d933c86af70008861e5cf6cb5d0d08a0114860a8f1b6c6fc081e86993971"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
