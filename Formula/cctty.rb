class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "871eba89cd0be8d835fe31e1b35c9cd18e74c3582cd222a4c099d32a653f04e2"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "f475aa6801886e786aa93d27e8e888f82ca6134c94de7c6aeae4bd614f07af8b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.1/cctty-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a29e5e6f0aab09059d3a4afb6bbf7ea703423a356322c6357d48c34d055f37d4"
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
