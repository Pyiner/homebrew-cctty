class Cctty < Formula
  desc "Drop-in Claude Agent SDK runner backed by the interactive Claude TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0ac60e7becc61a54b297c40f5028c1d8d9d40fa585955ced70e74838614dfcd"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "995f6e15b4d92c5a80398a6e8cef0d36b0266abef902def47749f951ff5c78ef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "221e92a960abd54a588ae6e364686c71da68d0eb8c7a8307d5d5ef397bf4e25a"
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
