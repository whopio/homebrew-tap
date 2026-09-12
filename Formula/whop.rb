class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.0/whop-darwin-arm64.tar.gz"
      sha256 "21abd5d1ac9b30ca0c9f22fddcf7950ea56d93d668a5d0c8508c44a6b6bf4ce8"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.0/whop-darwin-x64.tar.gz"
      sha256 "1ceb5badafb3a3f57f8a25aeb229f90dd0693b81aed4f35a92973fd73225c37a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.0/whop-linux-arm64.tar.gz"
      sha256 "c4c55e495ef037b348cd684973fca0946e8d03284de1c1d92032c7eb71e3626b"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v0.18.0/whop-linux-x64.tar.gz"
      sha256 "3262ad627bf8a188ac1762c78866735941cfa11438982920d2766efa8b6635d6"
    end
  end

  def install
    bin.install "whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
