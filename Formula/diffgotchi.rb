class Diffgotchi < Formula
  desc "Opinionated TUI diff reviewer"
  homepage "https://diffgotchi.dev"
  version "0.0.0"
  license "MIT"

  on_macos do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.0/diffgotchi-darwin-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_linux do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.0/diffgotchi-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "diffgotchi"
  end

  test do
    assert_match "diffgotchi", shell_output("#{bin}/diffgotchi --version")
  end
end
