class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.16.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.6/whop-darwin-arm64.tar.gz"
      sha256 "19377394245634ec6709e181641b533a64f0dfeaf6e31f3e5b866b553f3bbc3c"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.6/whop-darwin-x64.tar.gz"
      sha256 "9550339047eb351558f8c1b6ca573e5ac14f87770396ca09ee4a5c69eb0e5ff9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.6/whop-linux-arm64.tar.gz"
      sha256 "9e3d4ec296d030b079ce267da628c6e089c60b427f98aa348e6b1f66554c3e25"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.6/whop-linux-x64.tar.gz"
      sha256 "cf16b6e989bc946647fe98c2984bf5466874523ad39ed8183d5f2d98ce55c393"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
