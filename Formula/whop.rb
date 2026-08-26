class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.16.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.3/whop-darwin-arm64.tar.gz"
      sha256 "d4c26292a5e835ceb5da8a64cc61407ea648c13b1f4e2f7015d1ded24edeef65"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.3/whop-darwin-x64.tar.gz"
      sha256 "56f92b1629282990ed644875ab8c11fbfcc9fe2e4d95668c7c0de31a642df00e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.3/whop-linux-arm64.tar.gz"
      sha256 "349e292af13a30962e5201fa2a1f98627433bb6772de939413f702213f3c5dc5"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.16.3/whop-linux-x64.tar.gz"
      sha256 "0a35a119bf4310a24f2327ce31ed67f0f14378889b12fc8c02c25aa0b3627a73"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
