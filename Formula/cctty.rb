class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.0/cctty-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ebe22ed2a98b1780dbd141e80d999ebbd9b84112349cc6b1f664b7f8afc625e1"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.0/cctty-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "60d4895f73385312ec3880b3ed235517ef3b5f6106555fcaddca8b9f37fbe899"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.0/cctty-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0218fa7bb7fae6f56e0304c3a39fcdaa205a724fa70caabd7645b8950829ffae"
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
