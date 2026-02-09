class FiftyFiveH < Formula
  desc "55h CLI tool"
  homepage "https://github.com/dev-minsoo/55h"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.0/55h_v0.1.0_darwin_arm64.tar.gz"
      sha256 "4b9be6ca13be0aede69dd8110463bc06325b5df27802960b8cf2b24cacf22632"
    else
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.0/55h_v0.1.0_darwin_amd64.tar.gz"
      sha256 "828db18dd12b542830e418f207eeaceca738e2c662bb1108665c0692b3b62be4"
    end
  end

  def install
    bin.install "55h"
  end

  test do
    system "#{bin}/55h", "--help"
  end
end
