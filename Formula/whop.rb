class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.1/whop-darwin-arm64.tar.gz"
      sha256 "c811c7e98ffc7bbe91b888f5b42d26a090c710ea9638108cd05e5add4f0e0a7c"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.1/whop-darwin-x64.tar.gz"
      sha256 "2105328d9bd0f15fa98f9026f25f4c6bdcd67f2347a76c47965c60556cd7e3c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.1/whop-linux-arm64.tar.gz"
      sha256 "d1120814456ecd5bb5185f03db1c8ec66da4af8b77e7399da8a1091be6f5b64e"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.8.1/whop-linux-x64.tar.gz"
      sha256 "643726f66b196b6390e7f319b119c74e3a1d6e2a04f7c273e5e3ef18f70411af"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
