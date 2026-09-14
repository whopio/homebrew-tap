class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.18.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.1/whop-darwin-arm64.tar.gz"
      sha256 "9322380e82865c3fdf8c2a6ca0dc8fe5f1c1997f6bdc039bb57b89bd94fc2f3f"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.1/whop-darwin-x64.tar.gz"
      sha256 "3868b616049fd22c22564aed0960f5adb8739ec2c8f6e132f4b202df06b2a70f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.1/whop-linux-arm64.tar.gz"
      sha256 "84c72fcff75be94ccd518e265b20bb45faadb8c4a4b97a09f527e99407ff9050"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.1/whop-linux-x64.tar.gz"
      sha256 "60dc5b4af462daaa915b3888f579d38f56e869c791278e346e755703459214df"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
