class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.1/whop-darwin-arm64.tar.gz"
      sha256 "2d9d5d1e5a57715955be4afd3f972b4fc294ba41eba975288a73526ab8c9d3e4"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.1/whop-darwin-x64.tar.gz"
      sha256 "cc6092aa7f024f5863e5d062bb616e04f3e5ca9820814bb0d1e19e1c5d18e81f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.1/whop-linux-arm64.tar.gz"
      sha256 "4be101b2c85430735e50b0795f9da6fea9534ff2ebb8a3a7c56579cb46943c7e"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.13.1/whop-linux-x64.tar.gz"
      sha256 "bba7385cf782ca4974b5a380eeca31585e1ef9352c47a262ea9cea18052a71a5"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
