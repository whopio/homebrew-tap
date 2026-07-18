class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.1/whop-darwin-arm64.tar.gz"
      sha256 "4b6732799c8df0ff6804db72421f36384335ec1db9605e58de805573aa0b335c"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.1/whop-darwin-x64.tar.gz"
      sha256 "2ab30b37801ea05aa8a9a0804870e6b460a404ca8659a6c5cf252dfed192f59f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.1/whop-linux-arm64.tar.gz"
      sha256 "ef917d0157be8ebd14936fe0c856d67aea305b6955f79857c7608a47a960d4de"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.10.1/whop-linux-x64.tar.gz"
      sha256 "ae8b0ea8d70a927475072fdd62d4c4a11087f2e15ed57aac46739edc3e0df2dc"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
