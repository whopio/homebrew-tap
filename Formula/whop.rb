class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.4.0/whop-darwin-arm64.tar.gz"
      sha256 "2b2f593582e3e69b504d034ade5083e43da2f8d0670cf81e1ad8d10b5f9a2d55"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.4.0/whop-darwin-x64.tar.gz"
      sha256 "963edc88ea4d3182cfd97897d869c728001c518130445d4669daaa2025cc222a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.4.0/whop-linux-arm64.tar.gz"
      sha256 "f60cde358eccdf8bc7f30ebdee7e222774c85f8cd3ad9198e45f8707f11b167f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.4.0/whop-linux-x64.tar.gz"
      sha256 "c2e51491640ce3cefaef1adbb4b5f777a4cef0112eee7ff1eca8b6fbfb46efab"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
