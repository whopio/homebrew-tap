class Whop < Formula
  desc "Build and manage Whop apps from your terminal"
  homepage "https://whop.com/developers/"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v1.0.0/whop-darwin-arm64.gz"
      sha256 "88e217bdd88cc0f0f039644b16afc318419d4ffa18181f51de1b52a41750aef6"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v1.0.0/whop-darwin-x64.gz"
      sha256 "fd8d35b99228abe992722779ea56460dd48897df26e1f101fd68df51b28e71fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/whopio/whop-public-cli/releases/download/v1.0.0/whop-linux-arm64-glibc.gz"
      sha256 "a9d2a000dfc3ad3f7ff5bf943a423cd76030ff1364ad684911df434ed8dedde0"
    else
      url "https://github.com/whopio/whop-public-cli/releases/download/v1.0.0/whop-linux-x64-glibc-baseline.gz"
      sha256 "bffbd8e264a16317a85ba23aee1fe41647b33d252dbbedcb77fdb2a9ece54606"
    end
  end

  # Homebrew gunzips the download to whop-<target> and keeps the cached file's
  # non-executable mode.
  def install
    bin.install Dir["whop-*"].first => "whop"
    chmod 0755, bin/"whop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whop --version")
  end
end
