class PutCli < Formula
  desc "Command-line utility for put.io"
  homepage "https://github.com/AjayBrahmakshatriya/put-cli/"
  url "https://github.com/AjayBrahmakshatriya/put-cli/archive/0.1.2.tar.gz"
  sha256 "54598253ef6a082884263818ea053a96b0406d9d994668590203af87134f8a37"

  def install
    system "make"
    system "make", "install"
    bin.install "build/put"
  end

  test do
    system "true"
  end
end
