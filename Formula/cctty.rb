class Cctty < Formula
  desc "Claude Agent SDK compatibility through the interactive Claude Code TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.4/cctty-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "0bd793ce406ff5c29403cf66b9b41360d01cbf6f8d838db9ab9047c7f7e05798"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.4/cctty-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "3eff6ab70951f4d9704959db51231e824c3f107a5d0bf34c6399956ad6207ac9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.2.4/cctty-0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f731775252127c26348d3930c9a6d11cf4a578daafb2875b42af3a3ec43dc40"
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
