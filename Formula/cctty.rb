class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.2/cctty-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "c360d4f97098725c205143bda641599f37d387827d2c4257a9b69977b9c745cb"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.2/cctty-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a9f63e45917aa7e9655d94921da803bacdd6e5031c3b7c6bb4e60fd99caec229"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.2/cctty-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c36ea70c55ee8ba6f0d8258233c1a5eaf9bb9eed43a45eb0972acc4ab8fe826d"
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
