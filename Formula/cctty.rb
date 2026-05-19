class Cctty < Formula
  desc "Drop-in Claude Agent SDK runner backed by the interactive Claude TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8064dde27b8a21ef48900cd771727d7f05bd9d719f2ee70b50677606fdc67f02"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5a76215cad49f9d8df40f870c87a0e2403b4ca0c199df3e5c50c45cc45920a7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6269325e464ff7006ae40a0aca699f818513ffad0f7c5ecedffd393e03b854d"
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
