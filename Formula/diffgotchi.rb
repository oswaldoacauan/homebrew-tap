class Diffgotchi < Formula
  desc "Opinionated TUI diff reviewer"
  homepage "https://diffgotchi.dev"
  version "0.0.3"
  license "MIT"

  on_macos do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.3/diffgotchi-darwin-arm64.tar.gz"
    sha256 "6b4ea6403e2c66de19b827fdda946c2a209bba243ea62f8182f31d8853e7be85"
  end

  on_linux do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.3/diffgotchi-linux-x64.tar.gz"
    sha256 "0339dd24dc02c30cb5f48a6c16568bbfa73d3c4859d9999b68c9480c9670ad33"
  end

  def install
    bin.install "diffgotchi"
  end

  test do
    assert_match "diffgotchi", shell_output("#{bin}/diffgotchi --version")
  end
end
