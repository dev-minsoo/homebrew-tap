class FiftyFiveH < Formula
  desc "55h CLI tool"
  homepage "https://github.com/dev-minsoo/55h"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.2/55h_v0.1.2_darwin_arm64.tar.gz"
      sha256 "72bcd635d84d4130a8ac362dca9a0ebf7431a5951dc9fdc9b1d8783f134d5f8a"
    else
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.2/55h_v0.1.2_darwin_amd64.tar.gz"
      sha256 "9b84dd295b34f0adb64417395bda5f92a06fd65b867f7cc3c3ad76e4b8642324"
    end
  end

  def install
    bin.install "55h"
  end

  test do
    system "#{bin}/55h", "--help"
  end
end
