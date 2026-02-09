class Fiftyfiveh < Formula
  desc "55h CLI tool"
  homepage "https://github.com/dev-minsoo/55h"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.5/55h_v0.1.5_darwin_arm64.tar.gz"
      sha256 "9859e75fa735832eedf2ff8a6054edf1d8dd7375f06ff7d3cc78741d42b9d677"
    else
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.5/55h_v0.1.5_darwin_amd64.tar.gz"
      sha256 "ca27a77c552b6dae7bb5203ad6cc7c91c093c8cfdb5d6b5f4bbbdbab986426c4"
    end
  end

  def install
    bin.install "55h"
  end

  test do
    system "#{bin}/55h", "--help"
  end
end
