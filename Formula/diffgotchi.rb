class Diffgotchi < Formula
  desc "Opinionated TUI diff reviewer"
  homepage "https://diffgotchi.dev"
  version "0.0.2"
  license "MIT"

  on_macos do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.2/diffgotchi-darwin-arm64.tar.gz"
    sha256 "3c674e59fa2091f31c68a408bd3483055234052b290dd2f3fa157df5da0c7dfe"
  end

  on_linux do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.2/diffgotchi-linux-x64.tar.gz"
    sha256 "34a81fffc89f79101975d8b7304c363c3c817274726a2c4dede87cbc9c33c617"
  end

  def install
    bin.install "diffgotchi"
  end

  test do
    assert_match "diffgotchi", shell_output("#{bin}/diffgotchi --version")
  end
end
