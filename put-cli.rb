class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/AjayBrahmakshatriya/put-cli/"
  url "https://github.com/AjayBrahmakshatriya/put-cli/archive/0.1.1.tar.gz"
  sha256 "0e29d681d73b8a4599fd9c1f5cd7159bdef4c6dad08b453b763bd9c7a20f7488"

  def install
    system "make"
    system "make", "install"
    bin.install "build/put"
  end

  test do
    system "true"
  end
end
