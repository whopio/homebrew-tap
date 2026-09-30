class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.0/whop-darwin-arm64.tar.gz"
      sha256 "127c8d4f665b859395f340c70ddf3f06f40dd42e7b90aa6feade7a930fc93118"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.0/whop-darwin-x64.tar.gz"
      sha256 "b00bdba24479ee84951a6b2bffdfbe9692287fa58ed6bb75aac31778463c2375"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.0/whop-linux-arm64.tar.gz"
      sha256 "76e95a016d57e063938a8d35ede3cf3c1068e33f29fe72c8643f2a3cc3eedb97"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.23.0/whop-linux-x64.tar.gz"
      sha256 "adbbf74ac1f6da28315bec93ab1a4d89dcc8befcbe0dcdf861b196c7ea8b0c16"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
