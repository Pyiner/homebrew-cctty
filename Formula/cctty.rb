class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.6/cctty-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "d1f3ab0fd6037a117bec61580d75d5026f547102195e6446d665ed6481927eb0"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.6/cctty-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "0dbf377392c588061fd730b807cba64b21ed582b3c1aa6a55164952a98d96064"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.6/cctty-0.2.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "522e19d964c9c4f1a809d4af52afde9ffd4603252589682db424eb858261942c"
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
