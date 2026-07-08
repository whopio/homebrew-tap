class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.3.0/whop-darwin-arm64.tar.gz"
      sha256 "12d3d9e5d0065060138832ded3a9ba8d7f57cc655987994866a40aa3edc7be0d"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.3.0/whop-darwin-x64.tar.gz"
      sha256 "c9f2cc8025e6bb5e1b9b46e9d856f7fe7a3b3c0df96dc2455bd08583b2038814"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.3.0/whop-linux-arm64.tar.gz"
      sha256 "22b4d47fbc4c81bcf50e0c90ce3685c7d12d55acf6ef2bef1817f42a726376fb"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.3.0/whop-linux-x64.tar.gz"
      sha256 "c25c468cbc1f5c555716834efbe80a5bfae626d737adb92ddacfe1de17deffff"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
