class Diffgotchi < Formula
  desc "Opinionated TUI diff reviewer"
  homepage "https://diffgotchi.dev"
  version "0.0.1"
  license "MIT"

  on_macos do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.1/diffgotchi-darwin-arm64.tar.gz"
    sha256 "7a37c136afdd941cddd78a35798b10b452280ac5430cef8792e238f16147b5e6"
  end

  on_linux do
    url "https://github.com/oswaldoacauan/diffgotchi/releases/download/v0.0.1/diffgotchi-linux-x64.tar.gz"
    sha256 "53073b8aab59153a1b8f7e003dd9e726a431aa1878ee7f8bae058c7f1beb7692"
  end

  def install
    bin.install "diffgotchi"
  end

  test do
    assert_match "diffgotchi", shell_output("#{bin}/diffgotchi --version")
  end
end
