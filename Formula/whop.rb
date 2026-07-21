class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.12.0/whop-darwin-arm64.tar.gz"
      sha256 "03f2075005d51d8e98d57d5e3a53e7e61677a28075382945ea8d1093bb8b084e"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.12.0/whop-darwin-x64.tar.gz"
      sha256 "df4da58f5d4b452f892b4bb22a044512ad453b584c6abaf4cd0e2327a24970b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.12.0/whop-linux-arm64.tar.gz"
      sha256 "60ac753ceb12f6bfef9039c5efce7cd85ead0e65aad65dfff39aaeee8daec453"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.12.0/whop-linux-x64.tar.gz"
      sha256 "dd93517d1c2df9b85a08a9ebc8a3e64442b93e3d2b481be89dbc43c93128302f"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
