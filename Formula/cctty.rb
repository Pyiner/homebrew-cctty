class Cctty < Formula
  desc "Drop-in Claude Agent SDK runner backed by the interactive Claude TTY"
  homepage "https://github.com/Pyiner/cctty"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9902b775c08a0640c28585488318555ccc588a5585752a2283775ab686046fad"
    else
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0cfe90a93b56ad9c912dd4d9e9b412a7e6526b4f5dab7cd6a5e00be39817a2c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pyiner/cctty/releases/download/v0.1.0/cctty-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3879e8b74d8016b72a58af93a014537a7194eac93d8f463d260037f0fb3ddca0"
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
