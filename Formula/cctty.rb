class Cctty < Formula
  desc "Drop-in Claude Agent SDK runner backed by the interactive Claude TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d0dbccb8433b86f91c04a876516363b616e867f837315c0fd390ed41385abba"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6acc0b038108bfd5ad8df1adfa8549d6b888d220db5bfdb404d5e801a4899b53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d20cb3e3b3d10b50dbd00da2d809b3da25d8d537f43c1a0f5b9eb85b3faeed2"
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
