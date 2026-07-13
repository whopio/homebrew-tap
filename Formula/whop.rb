class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.0/whop-darwin-arm64.tar.gz"
      sha256 "698b3379265000342af2663d80c5f2b160fef0b5a251004427ee571963b3bbab"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.0/whop-darwin-x64.tar.gz"
      sha256 "64fbd240846165353111c28cb1d288794e112ca156dd90b6eed83629833fb621"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.0/whop-linux-arm64.tar.gz"
      sha256 "206f589732abc95e67dff87acf9af29adc9f5777c4cc1effd3403100853103c1"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.0/whop-linux-x64.tar.gz"
      sha256 "2f2b16e1c804776e82d38dd6671f7b68835d4a141d0221dc00d479bda5554776"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
