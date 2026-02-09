class A55h < Formula
  desc "55h CLI tool"
  homepage "https://github.com/dev-minsoo/55h"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.4/55h_v0.1.4_darwin_arm64.tar.gz"
      sha256 "b42819af4f532b20b53068db54eecaa45bca43cb6e6c3f253c785eb16320b8ed"
    else
      url "https://github.com/dev-minsoo/55h/releases/download/v0.1.4/55h_v0.1.4_darwin_amd64.tar.gz"
      sha256 "6eeed1b5f70c0c2ae7c09805f761d0742de12a1a743a8bef838e2b22fa01bcb6"
    end
  end

  def install
    bin.install "55h"
  end

  test do
    system "#{bin}/55h", "--help"
  end
end
