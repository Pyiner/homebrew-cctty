class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.3/cctty-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "4ce971a8d8a04f3117cf5697ab6ad49e015af61ceab2767e6441cfe01dee6407"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.3/cctty-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "74fce9841877fab4a4588bf963d634ea23acdb4fa0a2bdbd3c753009cb9ea095"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.3/cctty-0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61679d263a8786b116db1870ab4a2c3afb5d705aef8ac697d5e0c2312c789347"
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
