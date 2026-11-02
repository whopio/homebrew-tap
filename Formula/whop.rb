class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.33.0/whop-darwin-arm64.tar.gz"
      sha256 "abfb22c4010c6b5e385501a9cafed53f794d8e67f6056d22e1697d765ac000c1"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.33.0/whop-darwin-x64.tar.gz"
      sha256 "0241bb1a81f46ee1dec4dbacf70fffaecd60f9deb18387d1c69e21ed60601c0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.33.0/whop-linux-arm64.tar.gz"
      sha256 "bd395a669d847fb5b0dc9d12be5543d13f13fbb8ad040f51d5d997872244a14d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.33.0/whop-linux-x64.tar.gz"
      sha256 "dc6c727d8995e02347d5a0c74dfc190f654853868eebe98981fb9b18288da147"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
