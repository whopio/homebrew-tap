class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.18.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.4/whop-darwin-arm64.tar.gz"
      sha256 "4acf68c7080843ef537ed8dc670936b2f7b8857473e279b4af6df81965d8f96f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.4/whop-darwin-x64.tar.gz"
      sha256 "6f2a5be198e6554eec2e0fc1d0dd91635de69e8d24f7c3591573adb4b97c4780"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.4/whop-linux-arm64.tar.gz"
      sha256 "647e4c933ad7c3e92f3babaf3d3b0cf437369422b312c3abf71a24a404ac4993"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.4/whop-linux-x64.tar.gz"
      sha256 "db88d7c92f960f2c9882cc94de22af941b528b04125a85adab7b5c10e55008ac"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
