class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.0/whop-darwin-arm64.tar.gz"
      sha256 "2e4d18cdee31a05cdec990ced8b5eedec27994f9c3681e49d579cf14d5b52321"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.0/whop-darwin-x64.tar.gz"
      sha256 "4069be83c565cacaddae694091ac469e4e7a6ebff9a049d29179521e02d15082"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.0/whop-linux-arm64.tar.gz"
      sha256 "abe15b4de0a4a17bd3f2ce1c9aa537c0f07f2fa48bdba77654e3197362416764"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.34.0/whop-linux-x64.tar.gz"
      sha256 "b6c6288d15c82dd3d2d8f06460fd6393dfede5bf6e6b9867fb88d2c770da4343"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
