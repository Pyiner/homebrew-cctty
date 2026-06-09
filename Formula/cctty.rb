class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "90781f5b0298541960a93fe11d1e3bb9d0ccf2aff56b90b08d288ddefb176c4b"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "c58bf388b606df3f9ac4c343cb9ccdc0d775ffd4e46c228def142d1fa91dcc2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c95331402f8408e175b1d8fcb6290ac9415aa0f52f3b1a253d8150f916f20b12"
    end
  end

  def install
    bin.install "cctty"
  end

  test do
    assert_path_exists bin/"cctty"
    assert_predicate bin/"cctty", :executable?
  end
end
