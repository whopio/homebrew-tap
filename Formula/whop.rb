class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.1/whop-darwin-arm64.tar.gz"
      sha256 "1a7bdaa952f36af7a305194ee961e6e511428b09160f6f1b12a933e95fbc392d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.1/whop-darwin-x64.tar.gz"
      sha256 "b9f85043adcc7dc7ca56faf5ee4465dbcadea6cfed78544ef1053874568ffbe5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.1/whop-linux-arm64.tar.gz"
      sha256 "49096539e057362e46884ae62c6fb6425d5e845766e06f1b36d517805f2dc172"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.1/whop-linux-x64.tar.gz"
      sha256 "478f5081762877d9242c520612ed50992d724c5b6b0d3e77686e62d52b8c1770"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
