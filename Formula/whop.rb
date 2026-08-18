class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.1/whop-darwin-arm64.tar.gz"
      sha256 "396bc4cb651bfca10ab2cc1314f357709222d2d0ea39bcb82eed4ac6c4f1e4d0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.1/whop-darwin-x64.tar.gz"
      sha256 "db6aeba7137adc589d3103e59058c7cf4291bd5f00e86807a898048d87e20543"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.1/whop-linux-arm64.tar.gz"
      sha256 "094f7a206d1ec0482645268fccdcf8a7c204a8c8cdeedacb30f6165dc90d6d38"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.1/whop-linux-x64.tar.gz"
      sha256 "224cdb45db7619332b042057bdad1f20bbb60e0588edf2c8d74bd6fedfca9e97"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
