class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.0/whop-darwin-arm64.tar.gz"
      sha256 "3c9f9a0b3f0227b425ba424697524c33eba29dafd543220e124ed06703c66ed0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.0/whop-darwin-x64.tar.gz"
      sha256 "ac8ec65717626f178a758e029f0f50941bf59c234dd638c6f797a79e56925e28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.0/whop-linux-arm64.tar.gz"
      sha256 "9f6b04eca2fc717928e6bb6a112572ef69663c6485c69ffecd78f88ecf7d7ddc"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.0/whop-linux-x64.tar.gz"
      sha256 "ced96e11f9376f9ef3a35a2010a28c11147a2d03b06199f3dbb61679df29c3b1"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
