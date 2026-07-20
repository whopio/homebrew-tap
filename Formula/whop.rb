class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.11.0/whop-darwin-arm64.tar.gz"
      sha256 "4a903966228eafcdbc1826261c7402a38b196c3c55a70290f70ef42e10339d65"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.11.0/whop-darwin-x64.tar.gz"
      sha256 "405cf241b77bd4a0da8b2fdc209b7bc4945c3938bac68b0da458e0fd97a038de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.11.0/whop-linux-arm64.tar.gz"
      sha256 "06497fdb537ebef0c46e8f04e07616c8cf48b58e84629131583ac33473e38603"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.11.0/whop-linux-x64.tar.gz"
      sha256 "f65d084a2ec6f0ff03a858214f949cd21ba36047af86dcaaf552eb1e87241e3c"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
