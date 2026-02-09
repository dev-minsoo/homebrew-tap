class FiftyFiveH < Formula
  desc "55h CLI tool"
  homepage "https://github.com/dev-minsoo/55h"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.3/55h_v0.1.3_darwin_arm64.tar.gz"
      sha256 "cdda0accfd10398dc2093fe56a0dde8ece8617b6ede3bb3458de881b82152f79"
    else
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.3/55h_v0.1.3_darwin_amd64.tar.gz"
      sha256 "d807f8afdd125416c5e7ba38ad96c96c4b06bc2e4d8d599403b9e3efd258983b"
    end
  end

  def install
    bin.install "55h"
  end

  test do
    system "#{bin}/55h", "--help"
  end
end
