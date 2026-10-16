class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.28.0/whop-darwin-arm64.tar.gz"
      sha256 "19fc6aab66bb5e6fda0a905af3f0621282730bff381b00a8d3a51a03b25834a0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.28.0/whop-darwin-x64.tar.gz"
      sha256 "4f13c656ee9f60243477b5758d5d5f82e971cda60a1d408e0265def158a6b485"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.28.0/whop-linux-arm64.tar.gz"
      sha256 "a4516490c61aa8c895999b13b3926c34f6149a91531544f64caecec1deacb79a"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.28.0/whop-linux-x64.tar.gz"
      sha256 "166a47f2a83c2b4f8f3f74c316f4d48d6f4ae4281604dbaae0ca72aaa063e007"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
