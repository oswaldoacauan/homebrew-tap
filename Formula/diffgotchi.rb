class Diffgotchi < Formula
  desc "Opinionated TUI diff reviewer"
  homepage "https://diffgotchi.dev"
  version "0.0.4"
  license "MIT"

  on_macos do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.4/diffgotchi-darwin-arm64.tar.gz"
    sha256 "470b718a08fef99dd7788c351cdee0d067092197e0e8f5db5bdbd803bddd3634"
  end

  on_linux do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.4/diffgotchi-linux-x64.tar.gz"
    sha256 "e8b240b8dbe9c1dc7853d09d74632c7aae787324aee25b8278bbafdd1d7fc9ca"
  end

  def install
    bin.install "diffgotchi"
  end

  test do
    assert_match "diffgotchi", shell_output("#{bin}/diffgotchi --version")
  end
end
