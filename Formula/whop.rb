class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.22.0/whop-darwin-arm64.tar.gz"
      sha256 "f9dd6b6ca9506070e98642addab1ebbceb96ddfdb0ae16de28fe713acde2733f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.22.0/whop-darwin-x64.tar.gz"
      sha256 "8d5fb4e51302fbae424346a44f2c42041616d0f31f1f6715965ed7857f11c9cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.22.0/whop-linux-arm64.tar.gz"
      sha256 "7a93b1ceda62fbd8108faa16eb01f92697e8a8ad720eabb23fc3ce503cb44696"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.22.0/whop-linux-x64.tar.gz"
      sha256 "c1462b6ded75912cb8a251e034c95e743689c986258298ebc44e118f13837cea"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
