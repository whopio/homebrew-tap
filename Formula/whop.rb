class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.0/whop-darwin-arm64.tar.gz"
      sha256 "5f3653d585631c952257ee6a17382ff0a8ae670baf0d92eaf68b6be8b620615f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.0/whop-darwin-x64.tar.gz"
      sha256 "2b53c5f07e492fe1458d5a4682583f338862d44accdd6206fb4edad85fa04ad0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.0/whop-linux-arm64.tar.gz"
      sha256 "31d6953b72e56c0b7910ec125e10d2605d84d02d1d41ab555c4706bd88b226da"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.0/whop-linux-x64.tar.gz"
      sha256 "052f3d91f8ccb9385ebe5e0ad6d83f2775fe28eb46371e515dd52d8e0e8364c9"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
