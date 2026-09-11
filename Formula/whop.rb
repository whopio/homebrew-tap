class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.17.0/whop-darwin-arm64.tar.gz"
      sha256 "86ee7cdfab6d94247c14ae9d0aa9c4c603cf5f794154f9faff024e7706618a6c"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.17.0/whop-darwin-x64.tar.gz"
      sha256 "77654d8713a3761f40f2709353343bba44c14e7a29672bd206757a014ae54f58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.17.0/whop-linux-arm64.tar.gz"
      sha256 "43bb36c78f703c6e0d5c5b256ddd6e59d775378d08cddb569e4a00464cb2d63b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.17.0/whop-linux-x64.tar.gz"
      sha256 "b565f54d3fa43c32033b138ae9a18b5615bf456d60bb0c18a6c61f0d714c492b"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
