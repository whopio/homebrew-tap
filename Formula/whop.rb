class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.26.0/whop-darwin-arm64.tar.gz"
      sha256 "59985fba6d53f0e3195ef43aa31487e6ba9a89d6ec8c29dc44fada9b501fe1c1"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.26.0/whop-darwin-x64.tar.gz"
      sha256 "122ec2f694b40422f737f3135ee3a237c81f39c80a1f94f7e15da5ed076b0598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.26.0/whop-linux-arm64.tar.gz"
      sha256 "e8efce37ae60e4c866bad8a69097813b699e3f372edf3ba5fb6b5ec0a1e378d0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.26.0/whop-linux-x64.tar.gz"
      sha256 "86c4eb36abb13ce2481cad895dd993a9cc462fe1c58f13b654018693dc572a6c"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
