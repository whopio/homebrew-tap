class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.2/whop-darwin-arm64.tar.gz"
      sha256 "40a7aaa7b64604a7fc1f9b2546f23b4fde4af0ce6fbf9c579fca5d4274646a57"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.2/whop-darwin-x64.tar.gz"
      sha256 "026774995b8ff062d6280b739ed9cc7cd8749193de316acda3d128fb55d801a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.2/whop-linux-arm64.tar.gz"
      sha256 "1e8613546c55f94f534756c87cce9d659f9bd6e844225af254fdbe16b0208886"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.14.2/whop-linux-x64.tar.gz"
      sha256 "4f636bf0a379ddd9915b43e17b41140daf9438041b0d235c949c9e92b2fb0010"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
