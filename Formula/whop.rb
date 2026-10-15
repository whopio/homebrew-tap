class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.27.0/whop-darwin-arm64.tar.gz"
      sha256 "e18349d2c8f3947fd906196b6bfcf635c0985bdd5530b0aa2109b1929bdf9380"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.27.0/whop-darwin-x64.tar.gz"
      sha256 "56973c47ffaeda0847aa28c884daf818691f74f8d67f383ce016c4d7197e0dea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.27.0/whop-linux-arm64.tar.gz"
      sha256 "068a64ba62bd1328d87a644fdd4dd52411e1413e80b0f56f857df2b98ea150ad"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.27.0/whop-linux-x64.tar.gz"
      sha256 "d7343a6cd2c79208ad989e4e60add7cd5e79cf3b323f6cfc278cbb0a6b248bca"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
